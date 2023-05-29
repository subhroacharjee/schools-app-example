import 'dart:async';

import 'package:assessments/src/domain/assessments.graphql.repository.dart';
import 'package:assessments/src/domain/assessments.graphql.sanitized.dart' hide Assessment;
import 'package:assessments/src/domain/entity/assessment_status.dart';
import 'package:assessments/src/domain/entity/assessment_summary.dart';
import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:equatable/equatable.dart';
import 'package:learning_library/src/domain/entities/progress.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/schools_app.dart';

import '../../domain/entity/assessment.dart';

part 'assessment_list_state.dart';

class AssessmentListBloc extends FutureAsyncSnapshotCubit<AssessmentListState>
    with ClassInfoCacheMixin, AsyncSnapshotCubitRefreshMixin {
  final _repo = AssessmentsRepository();
  DiagnosticTestSessionInterval _interval = DiagnosticTestSessionInterval.active;
  set interval(DiagnosticTestSessionInterval v) {
    if (v != _interval) {
      _interval = v;
      _reloadAssessments(v);
    }
  }

  @override
  FutureOr<AssessmentListState> resolve() async {
    late final List<AssessmentInfo> assessments;
    late final DiagnosticTestSessionCounts assessmentCounts;
    late final int allAssessmentCounts;

    await Future.wait([
      _assessmentsQuery().then((v) => assessments = v),
      _countsQuery().then((v) => assessmentCounts = v),
      _countsQuery(all: true).then((v) => allAssessmentCounts = v.past + v.active + v.upcoming)
    ]);

    return AssessmentListState(
      assessments: {for (var a in assessments) a.id: a},
      activeCount: assessmentCounts.active,
      pastCount: assessmentCounts.past,
      upcomingCount: assessmentCounts.upcoming,
      noAssessmentCreated: allAssessmentCounts == 0,
      interval: _interval,
    );
  }

  Future<void> _reloadAssessments(DiagnosticTestSessionInterval type) async {
    emitWithData(state.data!.copyWith(status: AssessmentListStatus.loading, interval: type));

    late final List<AssessmentInfo> assessments;
    late final DiagnosticTestSessionCounts assessmentCounts;
    await Future.wait([
      _assessmentsQuery().then((v) => assessments = v),
      _countsQuery().then((v) => assessmentCounts = v),
    ]);

    if (type != _interval) {
      return;
    }

    emitWithData(
      state.data!.copyWith(
        assessments: {for (final a in assessments) a.id: a},
        activeCount: assessmentCounts.active,
        pastCount: assessmentCounts.past,
        upcomingCount: assessmentCounts.upcoming,
      ),
    );
  }

  Future<void> startAssessment(String id) async => _repo.startDiagnosticTestSession(id);

  Future<void> pauseAssessment(String id) async {
    final data = state.data!;

    await _repo.pauseDiagnosticTestSession(id);
    final assessment = data.assessments[id]?.copyWith(
      status: AssessmentStatus.paused,
    );

    if (assessment != null) {
      emitWithData(
        data.copyWith(assessments: {...data.assessments}..[id] = assessment),
      );
    }
  }

  Future<void> resumeAssessment(String id) async {
    final data = state.data!;

    await _repo.resumeDiagnosticTestSession(id).then((r) {
      r.when(
          ok: (ok) {
            final assessment = data.assessments[id]?.copyWith(
              status: AssessmentStatus.started,
              expectedDueAt: ok.resumeDiagnosticTestSession.expectedDueAt,
            );

            if (assessment != null) {
              emitWithData(
                data.copyWith(assessments: {...data.assessments}..[id] = assessment),
              );
            }
          },
          err: log.e);
    });
  }

  Future<void> deleteAssessment(String id) async {
    final data = state.data!;

    await _repo.removeDiagnosticTestSession(id);

    emitWithData(
      data.copyWith(assessments: {...data.assessments}..remove(id)),
    );
  }

  Future<AssessmentSummary> finishAssessment(String id) async {
    final data = state.data!;

    final res = (await _repo.finishDiagnosticTestSession(id)).unwrap();
    final resFdts = res.finishDiagnosticTestSession;
    final finalProgress = resFdts.finalProgress!;
    final initialProgress = resFdts.initialProgress!;
    final topic = resFdts.finishedAssessmentTopic;
    final summary = AssessmentSummary(
      id: id,
      finalProgress: Progress(
        correct: finalProgress.correct,
        wrong: finalProgress.wrong,
      ),
      initialProgress: Progress(
        correct: initialProgress.correct,
        wrong: initialProgress.wrong,
      ),
      timeSaved: resFdts.timeSaved,
      topicTitle: topic.title,
      topicId: topic.id,
      emoji: topic.emoji,
    );

    emitWithData(
      data.copyWith(
        assessments: {
          ...data.assessments,
        }..[id] = data.assessments[id]!.copyWith(
            status: AssessmentStatus.finished,
          ),
      ),
    );
    return summary;
  }

  Future<DiagnosticTestSessionCounts> _countsQuery({bool all = false}) {
    Future<DiagnosticTestSessionCounts> allCounts() => _repo
        .diagnosticTestSessionCounts(classId!)
        .then((v) => v.unwrap().classCounts.diagnosticTestSessionCounts);
    if (all) {
      return allCounts();
    }

    if (subtopicId != null) {
      return _repo
          .diagnosticTestSessionCountsForSubtopic(classId!, subtopicId!)
          .then((v) => v.unwrap().countSubtopic.diagnosticTestSessionCounts);
    } else if (topicId != null) {
      return _repo
          .diagnosticTestSessionCountsForTopic(classId!, topicId!)
          .then((v) => v.unwrap().countTopic.diagnosticTestSessionCounts);
    } else {
      return allCounts();
    }
  }

  Future<List<AssessmentInfo>> _assessmentsQuery() {
    if (subtopicId != null) {
      return _repo.allAssessmentsLinkedToSubtopic(classId!, _interval, subtopicId!).then((v) => v
          .unwrap()
          .targetSubtopic
          .allAssessmentsForSubtopic
          .map((assessment) => AssessmentInfo.fromAssessment(assessment))
          .toList());
    } else if (topicId != null) {
      return _repo.allAssessmentsLinkedToTopic(classId!, topicId!, _interval).then((v) => v
          .unwrap()
          .targetTopic
          .allAssessmentsForTopic
          .map((assessment) => AssessmentInfo.fromAssessment(assessment))
          .toList());
    } else {
      return _repo.allAssessments(_interval, classId!).then((v) => v
          .unwrap()
          .allSessionsClass
          .allAsssessmentsForClass
          .map((assessment) => AssessmentInfo.fromAssessment(assessment))
          .toList());
    }
  }
}

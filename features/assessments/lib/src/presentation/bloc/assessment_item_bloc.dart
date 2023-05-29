import 'dart:async';
import 'dart:math';

import 'package:assessments/src/domain/assessments.graphql.repository.dart';
import 'package:assessments/src/domain/assessments.graphql.sanitized.dart';
import 'package:assessments/src/domain/entity/assessment_status.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core_flutter/domain/usecases/get_user_names.dart';
import 'package:core_flutter/utils/polling_mixin.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entity/assessment.dart';

class AssessmentItemBloc extends FutureAsyncSnapshotCubit<AssessmentItemState>
    with PollingMixin<TResult<GetAssessmentUpdatesResponse>> {
  AssessmentItemBloc(this.assessment);

  Map<String, String> _studentNames = {};

  @override
  Duration get pollingInterval => const Duration(seconds: 3);
  final AssessmentInfo assessment;

  @override
  FutureOr<AssessmentItemState> resolve() async {
    final studentsJoinedIds =
        assessment.tests.where((e) => e.startedAt != null).map((e) => e.studentId);
    final studentsNotJoinedIds =
        assessment.tests.where((e) => e.startedAt == null).map((e) => e.studentId);

    _studentNames =
        (await GetUserNames(assessment.tests.map((e) => e.studentId).toList())()).unwrap();

    if (assessment.status != AssessmentStatus.finished) {
      startPolling();
    }

    return AssessmentItemState(
      studentsCount: assessment.tests.length,
      studentsJoined: studentsJoinedIds.map((e) => _studentNames[e] ?? 'N/A').toList(),
      studentsNotJoined: studentsNotJoinedIds.map((e) => _studentNames[e] ?? 'N/A').toList(),
      topicLabel:
          '${assessment.assessmentTopic.title} • ${assessment.allSubtopics ? 'All Subtopics' : assessment.subtopics.length == 1 ? assessment.subtopics[0].title : '${assessment.subtopics.length} Subtopics'}',
      timeSaved: assessment.timeSaved,
      expectedDueAt: assessment.expectedDueAt,
    );
  }

  @override
  FutureOr<void> onPollResult(TResult<GetAssessmentUpdatesResponse> r) {
    if (r.isOk()) {
      final data = state.data!;
      final updates = r.unwrap().assessmentUpdates;
      final studentsJoinedIds =
          updates.statsTests.where((e) => e.startedAt != null).map((e) => e.statsUser.id);
      final studentsNotJoinedIds =
          updates.statsTests.where((e) => e.startedAt == null).map((e) => e.statsUser.id);
      emitWithData(
        AssessmentItemState(
          studentsCount: data.studentsCount,
          studentsJoined: studentsJoinedIds.map((e) => _studentNames[e] ?? 'N/A').toList(),
          studentsNotJoined: studentsNotJoinedIds.map((e) => _studentNames[e] ?? 'N/A').toList(),
          topicLabel: data.topicLabel,
          timeSaved: data.timeSaved,
          expectedDueAt: updates.expectedDueAt,
        ),
      );
    }
  }

  void setExpectedDueAt(DateTime v) {
    final data = state.data!;
    emitWithData(
      AssessmentItemState(
        studentsCount: data.studentsCount,
        studentsJoined: data.studentsJoined,
        studentsNotJoined: data.studentsNotJoined,
        topicLabel: data.topicLabel,
        timeSaved: data.timeSaved,
        expectedDueAt: v,
      ),
    );
  }

  @override
  Future<TResult<GetAssessmentUpdatesResponse>> poll() =>
      AssessmentsRepository().getAssessmentUpdates(assessment.id);

  @override
  Future<void> close() {
    stopPolling();
    return super.close();
  }
}

class AssessmentItemState with EquatableMixin {
  AssessmentItemState({
    required int studentsCount,
    required this.studentsJoined,
    required this.studentsNotJoined,
    required this.topicLabel,
    required this.timeSaved,
    required this.expectedDueAt,
  }) : _studentsCount = studentsCount;

  final int _studentsCount;
  final List<String> studentsJoined;
  final List<String> studentsNotJoined;
  final String topicLabel;
  final Duration? timeSaved;
  final DateTime expectedDueAt;

  int get studentsJoinedCount => studentsJoined.length;
  int get studentsCount => max(_studentsCount, studentsJoinedCount);

  @override
  List<Object?> get props => [
        _studentsCount,
        studentsJoined,
        studentsNotJoined,
        topicLabel,
        timeSaved,
        expectedDueAt,
      ];
}

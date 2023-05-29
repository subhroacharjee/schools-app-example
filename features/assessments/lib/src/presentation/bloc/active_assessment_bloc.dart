import 'dart:async';

import 'package:assessments/src/domain/assessments.graphql.repository.dart';
import 'package:assessments/src/domain/entity/assessment_summary.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core_flutter/utils/polling_mixin.dart';
import 'package:equatable/equatable.dart';
// ignore: implementation_imports
import 'package:learning_library/src/domain/entities/progress.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';

part 'active_assessment_state.dart';

class ActiveAssessmentBloc extends FutureAsyncSnapshotCubit<ActiveAssessmentState>
    with PollingMixin<TResult<DiagnosticTestSessionStatus>> {
  ActiveAssessmentBloc({
    required this.onAssessmentComplete,
    required this.assessmentId,
  });
  final FutureOr<void> Function(AssessmentSummary) onAssessmentComplete;
  final String assessmentId;

  final _repo = AssessmentsRepository();

  @override
  Duration get pollingInterval => const Duration(seconds: 2);

  @override
  FutureOr<ActiveAssessmentState> resolve() async {
    return ActiveAssessmentState(id: assessmentId, status: DiagnosticTestSessionStatus.started);
  }

  @override
  FutureOr<void> onPollResult(TResult<DiagnosticTestSessionStatus> latestResult) async {
    if (latestResult.unwrap() != DiagnosticTestSessionStatus.finished) return;

    stopPolling();
    final res = (await _repo.getFinishedDiagnosticTestSession(assessmentId)).unwrap();
    final resAssessment = res.finishedSession;
    final finalProgress = resAssessment.finishedSessionFinalProgress!;
    final initialProgress = resAssessment.finishedSessionInitialProgress!;
    final topic = resAssessment.finishedSessionTopic;
    onAssessmentComplete(
      AssessmentSummary(
        id: assessmentId,
        finalProgress: Progress(
          correct: finalProgress.correct,
          wrong: finalProgress.wrong,
        ),
        initialProgress: Progress(
          correct: initialProgress.correct,
          wrong: initialProgress.wrong,
        ),
        timeSaved: resAssessment.timeSaved,
        topicTitle: topic.title,
        topicId: topic.id,
        emoji: topic.emoji,
      ),
    );
  }

  @override
  Future<TResult<DiagnosticTestSessionStatus>> poll() =>
      _repo.diagnosticTestSessionState(assessmentId).map((ok) => ok.assessmentState.status);

  @override
  Future<void> close() {
    stopPolling();
    return super.close();
  }
}

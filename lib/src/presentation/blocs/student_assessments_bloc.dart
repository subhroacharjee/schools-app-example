import 'dart:async';

import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:core_flutter/utils/polling_mixin.dart';
import 'package:equatable/equatable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/domain/entities/student_assessment.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.sanitized.dart';

part 'student_assessments_state.dart';

class StudentAssessmentsBloc extends FutureAsyncSnapshotCubit<StudentAssessmentsState>
    with ClassInfoCacheMixin, PollingMixin<TResult<List<UpcomingTests>>> {
  Set<String> testIds = {};
  Set<String> readyTestIds = {};
  final _repo = SchoolsAppRepository();

  @override
  FutureOr<StudentAssessmentsState> resolve() async {
    startPolling();
    return const StudentAssessmentsState();
  }

  @override
  Future<TResult<List<UpcomingTests>>> poll() {
    return _repo
        .getUpcomingAssessments(
          emulatedUserId().unwrap(),
        )
        .map((ok) => ok.student.upcomingTests ?? []);
  }

  @override
  FutureOr<void> onPollResult(TResult<List<UpcomingTests>> latestResult) {
    final tests = latestResult.unwrap();

    testIds = tests.map((test) => test.id).toSet();
    emitWithData(
      StudentAssessmentsState(
        assessments: tests.map(
          (test) {
            final session = test.session!;
            return StudentAssessment(
              testId: test.id,
              assessmentId: session.id,
              duration: session.duration,
              name: session.name,
              startAt: session.startAt,
            );
          },
        ).toList(),
      ),
    );
    markPendingReady();
  }

  Future<void> markPendingReady() async {
    final unmarkedTestIds = testIds.difference(readyTestIds);
    await Future.wait(
      unmarkedTestIds.map(
        (testId) => _repo.startStudentAssessment(
          testId,
        ),
      ),
    );
    readyTestIds.addAll(unmarkedTestIds);
  }

  @override
  Future<void> close() {
    stopPolling();
    return super.close();
  }
}

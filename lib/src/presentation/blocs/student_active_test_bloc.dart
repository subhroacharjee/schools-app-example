import 'dart:async';

import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:core_flutter/utils/polling_mixin.dart';
import 'package:equatable/equatable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.sanitized.dart';

part 'student_active_test_state.dart';

class StudentActiveTestBloc extends FutureAsyncSnapshotCubit<StudentActiveTestState>
    with ClassInfoCacheMixin, PollingMixin<TResult<GetActiveTestForStudentResponse>> {
  StudentActiveTestBloc();
  bool testStarted = false;
  final _repo = SchoolsAppRepository();

  @override
  Duration get pollingInterval => const Duration(seconds: 2);

  @override
  void onPollResult(TResult<GetActiveTestForStudentResponse> latestResult) {
    latestResult.when(
      ok: (r) {
        final t = r.activeTestStudent.activeTest;
        final data = t == null
            ? const StudentActiveTestState.none()
            : StudentActiveTestState(
                testId: t.id,
                complete: t.activeTestSession!.status == DiagnosticTestSessionStatus.finished,
              );
        emitWithData(data);
      },
      err: log.e,
    );
  }

  @override
  Future<TResult<GetActiveTestForStudentResponse>> poll() async => _repo.getActiveTestForStudent(
        emulatedUserId().unwrap(),
      );

  @override
  FutureOr<StudentActiveTestState> resolve() async {
    startPolling();
    return const StudentActiveTestState();
  }

  @override
  Future<void> close() {
    stopPolling();
    return super.close();
  }
}

part of 'student_active_test_bloc.dart';

class StudentActiveTestState with EquatableMixin {
  const StudentActiveTestState({
    this.complete,
    this.testId,
  });
  const StudentActiveTestState.none()
      : testId = null,
        complete = null;

  final String? testId;
  final bool? complete;

  @override
  List<Object?> get props => [testId, complete];
}

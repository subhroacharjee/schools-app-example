part of 'student_assessments_bloc.dart';

class StudentAssessmentsState with EquatableMixin {
  const StudentAssessmentsState({this.assessments});

  final List<StudentAssessment>? assessments;

  @override
  List<Object?> get props => [assessments];
}

part of 'student_comprehension_bloc.dart';

class StudentComprehensionsState with EquatableMixin {
  const StudentComprehensionsState({
    required this.studentComprehensions,
    required this.averageComprehension,
  });

  final Progress averageComprehension;
  final List<StudentComprehension> studentComprehensions;

  @override
  List<Object> get props => [
        studentComprehensions,
        averageComprehension,
      ];

  StudentComprehensionsState copyWith({
    Progress? averageComprehension,
    List<StudentComprehension>? studentComprehensions,
  }) {
    return StudentComprehensionsState(
      averageComprehension: averageComprehension ?? this.averageComprehension,
      studentComprehensions: studentComprehensions ?? this.studentComprehensions,
    );
  }
}

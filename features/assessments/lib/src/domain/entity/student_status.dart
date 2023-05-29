import 'package:equatable/equatable.dart';

import '../assessments.graphql.sanitized.dart';

class StudentStatus with EquatableMixin {
  StudentStatus({
    required this.complete,
    required this.studentId,
    this.startedAt,
  });

  factory StudentStatus.fromTests(Tests tests) => StudentStatus(
        complete: tests.complete,
        studentId: tests.student.id,
        startedAt: tests.startedAt,
      );

  final bool complete;

  final String studentId;

  final DateTime? startedAt;

  @override
  List<Object?> get props => [
        complete,
        studentId,
        startedAt,
      ];
  StudentStatus copyWith({
    bool? complete,
    String? student,
    DateTime? startedAt,
  }) =>
      StudentStatus(
        complete: complete ?? this.complete,
        studentId: studentId,
        startedAt: startedAt ?? this.startedAt,
      );
}

import 'package:equatable/equatable.dart';

class StudentAssessment with EquatableMixin {
  StudentAssessment({
    required this.testId,
    required this.assessmentId,
    required this.duration,
    required this.startAt,
    required this.name,
  });

  final String testId;
  final String assessmentId;
  final String name;
  final DateTime startAt;
  final Duration duration;

  @override
  List<Object?> get props => [
        testId,
        assessmentId,
        name,
        startAt,
        duration,
      ];
}

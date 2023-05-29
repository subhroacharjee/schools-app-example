class StudentComprehension {
  final String studentId;
  final String studentName;
  final double correct;
  final double wrong;

  const StudentComprehension({
    required this.studentId,
    required this.studentName,
    required this.correct,
    required this.wrong,
  });

  StudentComprehension copyWith({
    String? studentId,
    String? studentName,
    double? correct,
    double? wrong,
  }) {
    return StudentComprehension(
      studentId: studentId ?? this.studentId,
      studentName: studentName ?? this.studentName,
      correct: correct ?? this.correct,
      wrong: wrong ?? this.wrong,
    );
  }
}

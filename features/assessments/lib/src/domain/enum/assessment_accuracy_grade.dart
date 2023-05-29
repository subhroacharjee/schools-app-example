import 'package:components/components.dart';
import 'package:flutter/widgets.dart';

enum AssessmentAccuracyGrade {
  a(TColors.success, 'A'),
  b(TColors.primary, 'B'),
  c(Color(0xFFFFB700), 'C');

  const AssessmentAccuracyGrade(this.color, this.grade);

  final Color color;
  final String grade;
}

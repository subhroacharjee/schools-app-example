import 'dart:async';

import 'package:assessments/src/domain/entity/assessment_summary.dart';
import 'package:core/di.dart';
import 'package:core_flutter/presentation/configurer.dart';
import 'package:flutter/widgets.dart';

abstract class AssessmentsConfigurer extends Configurer {
  FutureOr<void> onAssessmentComplete(BuildContext context, AssessmentSummary assessmentSummary);
  final ValueNotifier<bool> _hasStudents = ValueNotifier(false);
  ValueNotifier<bool> get hasStudentsNotifier => _hasStudents;
  bool get hasStudents => _hasStudents.value;
  set hasStudents(bool v) => _hasStudents.value = v;
}

mixin AssessmentsConfigurerMixin {
  final configurer = gi<AssessmentsConfigurer>();
}

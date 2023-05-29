import 'dart:async';

import 'package:assessments/src/presentation/screen/assessments_screen.dart';
import 'package:core_flutter/presentation/shell/feature.dart';
import 'package:core_flutter/presentation/shell/navigation/route.dart';

import 'di.dart' as assessment_di;

class AssessmentsFeature extends Feature {
  AssessmentsFeature() : super(name: 'Assessments');

  @override
  List<Route> get routes => [
        Route(
          title: name,
          path: '/assessments',
          builder: (_, state) => const AssessmentsScreen(),
        ),
      ];

  @override
  FutureOr<void> configureDependencies() async => assessment_di.configureDependencies();
}

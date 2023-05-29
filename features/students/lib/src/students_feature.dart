import 'dart:async';

import 'package:students/src/presentation/screens/students_screen.dart';
import 'package:core_flutter/presentation/shell/feature.dart';
import 'package:core_flutter/presentation/shell/navigation/route.dart';

import 'di.dart' as student_di;

class StudentsFeature extends Feature {
  StudentsFeature() : super(name: 'Students');

  @override
  List<Route> get routes => [
        Route(
          title: name,
          path: '/students',
          builder: (_, state) => const StudentsScreen(),
        ),
      ];

  @override
  FutureOr<void> configureDependencies() async => student_di.configureDependencies();
}

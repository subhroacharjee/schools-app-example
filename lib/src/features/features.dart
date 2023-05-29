import 'dart:async';

import 'package:assessments/assessments.dart' as a;
import 'package:core_flutter/presentation/shell/feature.dart';
import 'package:core_flutter/presentation/shell/navigation/route.dart';
import 'package:flutter/material.dart' hide Route;
import 'package:recase/recase.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';
import 'package:students/students.dart' as s;
import 'package:testing/testing.dart' as t;

enum FeatureId {
  curriculum,
  testing,
  assessments,
  students,
  statistics,
  learningTasks,
}

abstract class SchoolsAppFeature extends Feature {
  SchoolsAppFeature({
    required this.id,
    required super.name,
    required this.color,
    required this.appearsIn,
    String? iconAsset,
  }) : iconAsset = iconAsset ?? name.toLowerCase().snakeCase;

  final FeatureId id;
  final String iconAsset;
  final Color color;
  final List<SchoolsLayoutType> appearsIn;

  @override
  List<Route> get routes => [];

  @override
  FutureOr<void> configureDependencies() {}
}

class MathsPlatformFeature extends SchoolsAppFeature {
  MathsPlatformFeature()
      : super(
          id: FeatureId.curriculum,
          name: 'Curriculum',
          color: curriculum,
          appearsIn: [
            SchoolsLayoutType.student,
            SchoolsLayoutType.teacher,
            SchoolsLayoutType.unauthenticated,
          ],
        );
}

class TestingFeature extends SchoolsAppFeature {
  TestingFeature()
      : super(
          id: FeatureId.testing,
          name: 'Testing',
          color: curriculum,
          appearsIn: [],
        );

  @override
  FutureOr<void> configureDependencies() async => t.configureDependencies();
}

class AssessmentsFeature extends SchoolsAppFeature {
  AssessmentsFeature()
      : super(
          id: FeatureId.assessments,
          name: 'Assessments',
          color: allStudentIcon,
          appearsIn: [
            SchoolsLayoutType.teacher,
            SchoolsLayoutType.unauthenticated,
          ],
        );

  @override
  FutureOr<void> configureDependencies() async => a.configureDependencies();
}

class StudentsFeature extends SchoolsAppFeature {
  StudentsFeature()
      : super(
          id: FeatureId.students,
          name: 'Students',
          color: students,
          appearsIn: [
            SchoolsLayoutType.teacher,
            SchoolsLayoutType.unauthenticated,
          ],
        );

  @override
  FutureOr<void> configureDependencies() async => s.configureDependencies();
}

class StatisticsFeature extends SchoolsAppFeature {
  StatisticsFeature()
      : super(
          id: FeatureId.statistics,
          name: 'Statistics',
          color: statistics,
          appearsIn: [SchoolsLayoutType.teacher],
        );
}

class LearningTasksFeature extends SchoolsAppFeature {
  LearningTasksFeature()
      : super(
          id: FeatureId.learningTasks,
          name: 'Learning Tasks',
          color: learningTasks,
          appearsIn: [SchoolsLayoutType.teacher],
        );
}

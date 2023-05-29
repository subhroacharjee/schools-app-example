import 'dart:math';
import 'package:assessments/src/domain/enum/assessment_accuracy_grade.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';

class AssessmentAccuracyGradeCalculator {
  factory AssessmentAccuracyGradeCalculator() =>
      _instance ??= AssessmentAccuracyGradeCalculator._();
  AssessmentAccuracyGradeCalculator._() {
    _initializePolynomials();
  }
  static AssessmentAccuracyGradeCalculator? _instance;
  final Map<AssessmentAccuracyGrade, Map<int, double>> gradeSubtopicToMinDurationMap = {
    AssessmentAccuracyGrade.a: {
      1: 0.25,
      3: 0.3333,
      5: 0.5,
      7: 0.6667,
      9: 0.75,
    },
    AssessmentAccuracyGrade.b: {
      1: 0.2083,
      3: 0.25,
      5: 0.4167,
      7: 0.5,
      9: 0.5833,
    }
  };

  late final Map<AssessmentAccuracyGrade, PolynomialFit> gradePolynomials = {};

  AssessmentAccuracyGrade calculate(int x, double y) {
    // x axis is number of subtopics
    // y axis is duration in hours

    // find the largest polynomial that this point lies above to determine its grade
    for (final grade in gradeSubtopicToMinDurationMap.keys) {
      if (_isPointAbovePolynomial(gradePolynomials[grade]!, x, y)) {
        return grade;
      }
    }
    return AssessmentAccuracyGrade.c;
  }

  bool _isPointAbovePolynomial(PolynomialFit poly, int x, double y) {
    final yPoly = poly.coefficients
        .foldIndexed(0.0, (index, previous, element) => previous + element * pow(x, index));
    return y > yPoly;
  }

  void _initializePolynomials() {
    // Calculate a second degree polynomial closest to the points using the least squares method
    // Experimentally, we have a fit of ~0.97 so far (1-9 subtopics)
    // NOTE: Never set polyDegree to more than the number of points provided in each map above,
    // otherwise the solver will return null
    const polyDegree = 2;
    final weights = List.generate(
        gradeSubtopicToMinDurationMap[AssessmentAccuracyGrade.a]!.length, (index) => 1.0);
    for (final grade in gradeSubtopicToMinDurationMap.keys) {
      final poly = _solvePolynomial(gradeSubtopicToMinDurationMap[grade]!, weights, polyDegree);
      gradePolynomials[grade] = poly;
    }
  }

  PolynomialFit _solvePolynomial(Map<int, double> xToYPoints, weights, polyDegree) {
    final xPoints = xToYPoints.keys.map((e) => e.toDouble()).toList();
    final yPoints = xToYPoints.values.toList();
    final polySolver = LeastSquaresSolver(xPoints, yPoints, weights);
    return polySolver.solve(polyDegree)!;
  }
}

// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'dart:math';
import 'package:assessments/src/domain/enum/assessment_accuracy_grade.dart';
import 'package:assessments/src/utils/assessment_accuracy_grade_calculator.dart';
import 'package:core/extensions/date_time_extensions.dart';
import 'package:core/utils/validator.dart';
import 'package:flutter/material.dart';

class AddAssessmentFormHandler {
  AddAssessmentFormHandler({
    required this.selectedSubtopicIds,
    required DateTime? selectedDate,
    required this.titleController,
    required this.formKey,
    required this.hasStudents,
    required this.isEdit,
    Duration? duration,
  }) : _selectedDate = selectedDate ?? DateTime.now() {
    final now = DateTime.now();
    _startTime = TimeOfDay.fromDateTime(
      selectedDate ?? now.add(const Duration(minutes: 30)),
    );
    _endTime = TimeOfDay.fromDateTime(
      (selectedDate ?? now).add(duration ?? const Duration(hours: 1)),
    );
  }

  final List<String> selectedSubtopicIds;
  final TextEditingController titleController;
  final GlobalKey<FormState> formKey;
  final bool hasStudents;
  final bool isEdit;
  DateTime _selectedDate;

  late TimeOfDay _startTime;
  late TimeOfDay _endTime;

  // Notifiers to rebuild section of the form
  final ctaButtonEnabledNotifier = ValueNotifier<bool>(false);
  final dateAndTimeNotifier = ValueNotifier<bool>(false);
  final gradeNotifier = ValueNotifier<AssessmentAccuracyGrade?>(null);

  TimeOfDay get startTime => _startTime;
  TimeOfDay get endTime => _endTime;
  DateTime get startDate => selectedDate.atHourMin(_startTime.hour, _startTime.minute);
  DateTime get endDate => selectedDate.atHourMin(_endTime.hour, _endTime.minute);
  DateTime get selectedDate => _selectedDate;
  Duration? get duration => endDate.isBefore(startDate) ? null : endDate.difference(startDate);

  set selectedDate(DateTime date) {
    _selectedDate = date;
    dateAndTimeNotifier.notifyListeners();
    formKey.currentState?.validate();
  }

  set startTime(TimeOfDay time) {
    _startTime = time;
    dateAndTimeNotifier.notifyListeners();
    formKey.currentState?.validate();

    computeAssessmentGrade();
  }

  set endTime(TimeOfDay time) {
    _endTime = time;
    dateAndTimeNotifier.notifyListeners();
    formKey.currentState?.validate();

    computeAssessmentGrade();
  }

  void onTimeChange() {
    dateAndTimeNotifier.notifyListeners();
    formKey.currentState?.validate();
  }

  void onTopicChanged() {
    selectedSubtopicIds.clear();
    computeAssessmentGrade();
    toggleAddButton(titleController.text);
  }

  void onSubtopicChanged(List<String> subtopicIds) {
    selectedSubtopicIds
      ..clear()
      ..addAll(subtopicIds);

    computeAssessmentGrade();
    toggleAddButton(titleController.text);
  }

  void toggleAddButton([String? title]) {
    ctaButtonEnabledNotifier.value = (title?.isNotEmpty ?? titleController.text.isNotEmpty) &&
        selectedSubtopicIds.isNotEmpty &&
        isStartTimeValid() &&
        isEndTimeValid() &&
        isSelectedDateValid() &&
        _isDurationValid() &&
        hasStudents;
  }

  bool isStartTimeValid() =>
      startDate.isBefore(endDate) && (isEdit || startDate.isAfter(DateTime.now()));

  bool isEndTimeValid() {
    const maxDuration = Duration(hours: 2);
    final futureTime = startDate.add(maxDuration);
    return endDate.isAfter(startDate) && futureTime.isAfterOrAtSameMomentAs(endDate);
  }

  bool _isDurationValid() => !_isDurationGreaterThanMax() && !_isDurationLessThanMin();

  bool _isDurationGreaterThanMax() => duration != null && duration!.inMinutes > 120;

  bool _isDurationLessThanMin() => duration != null && duration!.inMinutes < 10;

  bool isSelectedDateValid() =>
      selectedDate.isAfter(DateTime.now()) || selectedDate.isSameDate(DateTime.now());

  String? validationText() {
    if (!isStartTimeValid()) {
      return 'Invalid start time.';
    } else if (_isDurationGreaterThanMax()) {
      return 'Assessment duration cannot be more than 2 hours.';
    } else if (_isDurationLessThanMin()) {
      return 'Assessment duration cannot be less than 10 minutes.';
    } else if (!isEndTimeValid()) {
      return 'Invalid end time.';
    } else if (!isSelectedDateValid()) {
      return 'Invalid date.';
    }

    return null;
  }

  void computeAssessmentGrade() {
    if (selectedSubtopicIds.isEmpty) {
      gradeNotifier.value = null;
      return;
    }
    gradeNotifier.value = AssessmentAccuracyGradeCalculator()
        .calculate(selectedSubtopicIds.length, duration!.inMinutes / 60);
  }
}

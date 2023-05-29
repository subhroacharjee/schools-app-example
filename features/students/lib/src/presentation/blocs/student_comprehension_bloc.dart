import 'dart:async';

import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/domain/usecases/get_user_names.dart';
import 'package:equatable/equatable.dart';
import 'package:schools_app/schools_app.dart';
import 'package:students/src/domain/entities/student_comprehension.dart';
import 'package:students/src/domain/students.graphql.repository.dart';
import 'package:students/src/domain/students.graphql.sanitized.dart' as s;

import '../../domain/entities/progress.dart';

part 'student_comprehension_state.dart';

class StudentComprehensionsBloc extends FutureAsyncSnapshotCubit<StudentComprehensionsState>
    with ClassInfoCacheMixin {
  final _repo = gi<StudentsRepository>();

  final Map<String, StudentComprehension> studentComprehensions = {};
  List<StudentComprehension> get allComprehensions => studentComprehensions.values.toList();
  @override
  FutureOr<StudentComprehensionsState> resolve() async {
    late final List<s.Students> students;
    late final Progress averageComprehension;
    if (subtopicId != null) {
      students = (await _repo.comprehensionForSubtopic(
        classId!,
        subtopicId!,
      ))
          .unwrap()
          .subtopic
          .progressForClass
          .subtopicUsersProgress
          .map(
            (e) => s.Students(
              $__typename: 'Student',
              studentID: e.userID,
              studentsComprehension: s.Progress(
                  correct: e.progress.correct, wrong: e.progress.wrong, $__typename: 'Progress'),
            ),
          )
          .toList();
      averageComprehension = _calculateAverageProgress(students);
    } else if (topicId != null) {
      students = (await _repo.comprehensionForTopic(
        classId!,
        topicId!,
      ))
          .unwrap()
          .topic
          .topicProgress
          .topicUsersProgress
          .map(
            (e) => s.Students(
              $__typename: 'Student',
              studentID: e.userID,
              studentsComprehension: s.Progress(
                  correct: e.progress.correct, wrong: e.progress.wrong, $__typename: 'Progress'),
            ),
          )
          .toList();
      averageComprehension = _calculateAverageProgress(students);
    } else {
      final overallComprehension = (await _repo.comprehension(classId!))
          .map((ok) => ok.$class.overallComprehension)
          .unwrap();
      students = overallComprehension.students ?? [];
      averageComprehension = Progress(
        correct: overallComprehension.overall.correct,
        wrong: overallComprehension.overall.wrong,
      );
    }

    // TODO: Zac, add error state for if names cannot be fetched
    final studentsMap = {for (final student in students) student.studentID: student};
    final studentNames = (await GetUserNames(students.map((s) => s.studentID).toList())()).unwrap();
    studentNames.forEach(
      (key, value) {
        final progress = studentsMap[key]!.studentsComprehension;
        studentComprehensions[key] = StudentComprehension(
          studentId: key,
          studentName: value,
          correct: progress.correct,
          wrong: progress.wrong,
        );
      },
    );

    return StudentComprehensionsState(
      studentComprehensions: studentComprehensions.values.toList(),
      averageComprehension: averageComprehension,
    );
  }

  void filter(String value) {
    if (value.isEmpty) {
      emitWithData(StudentComprehensionsState(
        studentComprehensions: studentComprehensions.values.toList(),
        averageComprehension: state.data!.averageComprehension,
      ));
    } else {
      emitWithData(
        StudentComprehensionsState(
          studentComprehensions: studentComprehensions.values
              .where((element) => element.studentName.toLowerCase().contains(value.toLowerCase()))
              .toList(),
          averageComprehension: state.data!.averageComprehension,
        ),
      );
    }
  }

  Progress _calculateAverageProgress(List<s.Students> studentComprehensions) {
    final total = studentComprehensions.length;
    final correct =
        studentComprehensions.fold(0.0, ((p, c) => p + c.studentsComprehension.correct));
    final wrong = studentComprehensions.fold(0.0, ((p, c) => p + c.studentsComprehension.wrong));
    return Progress(correct: correct / total, wrong: wrong / total);
  }
}

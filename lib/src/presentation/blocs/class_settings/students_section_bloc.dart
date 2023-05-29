import 'dart:async';

import 'package:core/constants.dart';
import 'package:core_flutter/domain/usecases/get_user_names.dart';
import 'package:core_flutter/presentation/blocs/settings/sections/settings_section_bloc.dart';
import 'package:flutter/material.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/students_section_state.dart';

class StudentsSectionBloc extends SettingsSectionBloc<StudentsSectionState> {
  StudentsSectionBloc(this.classId);

  final String classId;
  final scrollController = ScrollController();
  final _repo = SchoolsAppRepository();

  @override
  FutureOr<StudentsSectionState> resolve() async {
    final studentSettings = await _repo.getClassStudentSettings(classId).unwrap();
    final studentIds =
        studentSettings.classStudentSettings.students.map((e) => e.settingsUser.id).toList();
    final students = await GetUserNames(studentIds)().unwrap();
    return StudentsSectionState(
      query: '',
      code: studentSettings.classStudentSettings.code,
      studentsMap: students,
    );
  }

  void searchStudent(String? v) {
    if (v == null || v.isEmpty) {
      emitWithData(data.copyWith.filteredStudentsMap(null));
    } else {
      emitWithData(
        data.copyWith.filteredStudentsMap(
          {
            for (final e in data.studentsMap.entries
                .where((e) => e.value.toLowerCase().contains(v.toLowerCase())))
              e.key: e.value,
          },
        ),
      );
    }
  }

  Future<void> removeStudent(String studentId) async =>
      _repo.removeStudentFromClass(classId, studentId).when(
            ok: (ok) {
              // NOTE: Couldn't make this a one-line ternary operation. LSP is bugging out
              // Refactor once it's fixed with an update
              late final Map<String, String>? filtered;
              if (data.filteredStudentsMap != null) {
                filtered = {...data.filteredStudentsMap!}..remove(studentId);
              } else {
                filtered = null;
              }

              emitWithData(
                data.copyWith(
                  studentsMap: {...data.studentsMap}..remove(studentId),
                  filteredStudentsMap: filtered,
                ),
              );
            },
            err: voider,
          );

  @override
  Future<bool> save() async => true;

  @override
  bool validate() => true;

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}

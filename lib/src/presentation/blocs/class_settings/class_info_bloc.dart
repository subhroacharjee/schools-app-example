import 'dart:async';

import 'package:core/domain/repositories/learning/year.graphql.repository.dart';
import 'package:core/domain/repositories/learning/year.graphql.sanitized.dart';
import 'package:core_flutter/presentation/blocs/settings/sections/settings_section_bloc.dart';
import 'package:flutter/material.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.sanitized.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/class_info_state.dart';

class ClassInfoBloc extends SettingsSectionBloc<ClassInfoState> {
  ClassInfoBloc({
    required this.classId,
    required this.onYearUpdated,
  });

  final String classId;
  final VoidCallback onYearUpdated;
  final _repo = SchoolsAppRepository();

  @override
  FutureOr<ClassInfoState> resolve() async {
    late final GetClassNameAndYearResponse classInfo;
    late final GetAllResponse yearsR;
    await Future.wait([
      _repo.getClassNameAndYear(classId).unwrap().then((v) => classInfo = v),
      YearRepository().getAll(null).unwrap().then((v) => yearsR = v),
    ]);
    final ny = classInfo.classNameAndYear;
    final years = yearsR.allYears;

    return ClassInfoState.initial(oldClassName: ny.name, oldYearId: ny.nYear.id, yearsMap: {
      // Only display years 3-10
      for (final y in years.where((e) {
        final val = int.tryParse(e.title);
        return val != null && val >= 3 && val <= 10;
      }).toList()
        ..sort(
          (a, b) => int.parse(a.title).compareTo(
            int.parse(b.title),
          ),
        ))
        y.id: y.title,
    });
  }

  void onClassNameChanged(String? v) {
    if (v != null) {
      emitWithData(data.copyWith.className(v));
    }
  }

  void onYearIdChanged(String? v) {
    if (v != null) {
      emitWithData(data.copyWith.yearId(v));
    }
  }

  List<String?> validateClassName(String? v) =>
      (v?.isNotEmpty ?? false) ? [] : ['Class name cannot be empty'];

  @override
  Future<bool> save() async =>
      _repo.updateClass(classId, UpdateClassInput(name: data.className, yearID: data.yearId)).when(
            ok: (_) {
              if (data.oldYearId != data.yearId) {
                onYearUpdated();
              }
              emitWithData(
                ClassInfoState.initial(
                  oldClassName: data.className ?? data.oldClassName,
                  oldYearId: data.yearId ?? data.oldYearId,
                  yearsMap: data.yearsMap,
                ),
              );
              return true;
            },
            err: (_) => false,
          );

  @override
  bool validate() =>
      (data.className != null && data.oldClassName != data.className) ||
      (data.yearId != null && data.oldYearId != data.yearId);
}

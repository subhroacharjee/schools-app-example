import 'dart:async';

import 'package:core_flutter/presentation/blocs/settings/sections/settings_section_bloc.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/danger_zone_state.dart';

import '../../../domain/graphql/schools_app.graphql.repository.dart';

class DangerZoneBloc extends SettingsSectionBloc<DangerZoneState> {
  DangerZoneBloc({required this.classId});

  final String classId;

  @override
  FutureOr<DangerZoneState> resolve() => SchoolsAppRepository()
      .getClassName(classId)
      .map((ok) => DangerZoneState(className: ok.className.name))
      .unwrap();

  Future<void> deleteClass() async => SchoolsAppRepository().deleteClass(classId);

  @override
  Future<bool> save() => throw UnimplementedError();

  @override
  bool validate() => true;
}

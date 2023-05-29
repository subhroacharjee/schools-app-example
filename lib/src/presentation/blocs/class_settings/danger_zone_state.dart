import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:core_flutter/presentation/blocs/settings/sections/settings_section_state.dart';

part 'danger_zone_state.g.dart';

@CopyWith()
class DangerZoneState extends SettingsSectionState {
  DangerZoneState({required this.className, super.error});

  final String className;

  @override
  DangerZoneState withError(String? error) => copyWith.error(error);
}

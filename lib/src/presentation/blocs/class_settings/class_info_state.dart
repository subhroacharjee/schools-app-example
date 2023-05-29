import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:core_flutter/presentation/blocs/settings/sections/settings_section_state.dart';

part 'class_info_state.g.dart';

@CopyWith()
class ClassInfoState extends SettingsSectionState {
  ClassInfoState({
    required this.oldClassName,
    required this.oldYearId,
    required this.className,
    required this.yearId,
    required this.yearsMap,
    super.error,
  });

  ClassInfoState.initial({
    required this.oldClassName,
    required this.oldYearId,
    required this.yearsMap,
  })  : className = null,
        yearId = null;

  final String oldClassName;
  final String oldYearId;
  final String? className;
  final String? yearId;
  final Map<String, String> yearsMap;

  @override
  List<Object?> get props => [
        ...super.props,
        oldClassName,
        oldYearId,
        className,
        yearId,
        yearsMap,
      ];

  @override
  ClassInfoState withError(String? error) => copyWith.error(error);
}

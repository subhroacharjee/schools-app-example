import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:core_flutter/presentation/blocs/settings/sections/settings_section_state.dart';

part 'students_section_state.g.dart';

@CopyWith()
class StudentsSectionState extends SettingsSectionState {
  StudentsSectionState({
    required this.studentsMap,
    required this.query,
    required this.code,
    this.filteredStudentsMap,
    super.error,
  });

  final Map<String, String> studentsMap;
  final Map<String, String>? filteredStudentsMap;
  final String code;
  final String query;

  @override
  List<Object?> get props => [
        ...super.props,
        studentsMap,
        filteredStudentsMap,
        query,
      ];

  @override
  StudentsSectionState withError(String? error) => copyWith.error(error);
}

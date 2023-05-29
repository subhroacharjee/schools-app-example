import 'package:equatable/equatable.dart';
import 'package:schools_app/src/domain/entities/region_info.dart';

class AddSchoolState with EquatableMixin {
  AddSchoolState({
    required this.regionsMap,
    this.regionId,
    this.schoolId,
    this.newSchoolName,
    this.existingSchoolId,
    this.loading = false,
  });

  final String? regionId;
  final Map<String, RegionInfo> regionsMap;
  // Map of school id to name
  final String? schoolId;
  final String? newSchoolName;
  final String? existingSchoolId;
  final bool loading;

  @override
  List<Object?> get props => [
        regionId,
        regionsMap,
        schoolId,
        newSchoolName,
        loading,
      ];

  AddSchoolState copyWith({
    String? regionId,
    Map<String, RegionInfo>? regionsMap,
    String? schoolId,
    String? newSchoolName,
    String? existingSchoolId,
    bool? loading,
    bool removeSchoolId = false,
    bool removeExistingSchoolId = false,
    bool removeNewSchoolName = false,
  }) =>
      AddSchoolState(
        regionId: regionId ?? this.regionId,
        regionsMap: regionsMap ?? this.regionsMap,
        schoolId: removeSchoolId ? null : schoolId ?? this.schoolId,
        existingSchoolId: removeExistingSchoolId ? null : existingSchoolId ?? this.existingSchoolId,
        newSchoolName: removeNewSchoolName ? null : newSchoolName ?? this.newSchoolName,
        loading: loading ?? this.loading,
      );
}

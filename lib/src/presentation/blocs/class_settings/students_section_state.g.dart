// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_section_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StudentsSectionStateCWProxy {
  StudentsSectionState code(String code);

  StudentsSectionState error(String? error);

  StudentsSectionState filteredStudentsMap(
      Map<String, String>? filteredStudentsMap);

  StudentsSectionState query(String query);

  StudentsSectionState studentsMap(Map<String, String> studentsMap);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StudentsSectionState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StudentsSectionState(...).copyWith(id: 12, name: "My name")
  /// ````
  StudentsSectionState call({
    String? code,
    String? error,
    Map<String, String>? filteredStudentsMap,
    String? query,
    Map<String, String>? studentsMap,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStudentsSectionState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStudentsSectionState.copyWith.fieldName(...)`
class _$StudentsSectionStateCWProxyImpl
    implements _$StudentsSectionStateCWProxy {
  final StudentsSectionState _value;

  const _$StudentsSectionStateCWProxyImpl(this._value);

  @override
  StudentsSectionState code(String code) => this(code: code);

  @override
  StudentsSectionState error(String? error) => this(error: error);

  @override
  StudentsSectionState filteredStudentsMap(
          Map<String, String>? filteredStudentsMap) =>
      this(filteredStudentsMap: filteredStudentsMap);

  @override
  StudentsSectionState query(String query) => this(query: query);

  @override
  StudentsSectionState studentsMap(Map<String, String> studentsMap) =>
      this(studentsMap: studentsMap);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StudentsSectionState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StudentsSectionState(...).copyWith(id: 12, name: "My name")
  /// ````
  StudentsSectionState call({
    Object? code = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? filteredStudentsMap = const $CopyWithPlaceholder(),
    Object? query = const $CopyWithPlaceholder(),
    Object? studentsMap = const $CopyWithPlaceholder(),
  }) {
    return StudentsSectionState(
      code: code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      filteredStudentsMap: filteredStudentsMap == const $CopyWithPlaceholder()
          ? _value.filteredStudentsMap
          // ignore: cast_nullable_to_non_nullable
          : filteredStudentsMap as Map<String, String>?,
      query: query == const $CopyWithPlaceholder() || query == null
          ? _value.query
          // ignore: cast_nullable_to_non_nullable
          : query as String,
      studentsMap:
          studentsMap == const $CopyWithPlaceholder() || studentsMap == null
              ? _value.studentsMap
              // ignore: cast_nullable_to_non_nullable
              : studentsMap as Map<String, String>,
    );
  }
}

extension $StudentsSectionStateCopyWith on StudentsSectionState {
  /// Returns a callable class that can be used as follows: `instanceOfStudentsSectionState.copyWith(...)` or like so:`instanceOfStudentsSectionState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StudentsSectionStateCWProxy get copyWith =>
      _$StudentsSectionStateCWProxyImpl(this);
}

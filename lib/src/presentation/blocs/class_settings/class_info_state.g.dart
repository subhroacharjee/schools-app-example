// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_info_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClassInfoStateCWProxy {
  ClassInfoState className(String? className);

  ClassInfoState error(String? error);

  ClassInfoState oldClassName(String oldClassName);

  ClassInfoState oldYearId(String oldYearId);

  ClassInfoState yearId(String? yearId);

  ClassInfoState yearsMap(Map<String, String> yearsMap);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClassInfoState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClassInfoState(...).copyWith(id: 12, name: "My name")
  /// ````
  ClassInfoState call({
    String? className,
    String? error,
    String? oldClassName,
    String? oldYearId,
    String? yearId,
    Map<String, String>? yearsMap,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClassInfoState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClassInfoState.copyWith.fieldName(...)`
class _$ClassInfoStateCWProxyImpl implements _$ClassInfoStateCWProxy {
  final ClassInfoState _value;

  const _$ClassInfoStateCWProxyImpl(this._value);

  @override
  ClassInfoState className(String? className) => this(className: className);

  @override
  ClassInfoState error(String? error) => this(error: error);

  @override
  ClassInfoState oldClassName(String oldClassName) =>
      this(oldClassName: oldClassName);

  @override
  ClassInfoState oldYearId(String oldYearId) => this(oldYearId: oldYearId);

  @override
  ClassInfoState yearId(String? yearId) => this(yearId: yearId);

  @override
  ClassInfoState yearsMap(Map<String, String> yearsMap) =>
      this(yearsMap: yearsMap);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClassInfoState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClassInfoState(...).copyWith(id: 12, name: "My name")
  /// ````
  ClassInfoState call({
    Object? className = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? oldClassName = const $CopyWithPlaceholder(),
    Object? oldYearId = const $CopyWithPlaceholder(),
    Object? yearId = const $CopyWithPlaceholder(),
    Object? yearsMap = const $CopyWithPlaceholder(),
  }) {
    return ClassInfoState(
      className: className == const $CopyWithPlaceholder()
          ? _value.className
          // ignore: cast_nullable_to_non_nullable
          : className as String?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      oldClassName:
          oldClassName == const $CopyWithPlaceholder() || oldClassName == null
              ? _value.oldClassName
              // ignore: cast_nullable_to_non_nullable
              : oldClassName as String,
      oldYearId: oldYearId == const $CopyWithPlaceholder() || oldYearId == null
          ? _value.oldYearId
          // ignore: cast_nullable_to_non_nullable
          : oldYearId as String,
      yearId: yearId == const $CopyWithPlaceholder()
          ? _value.yearId
          // ignore: cast_nullable_to_non_nullable
          : yearId as String?,
      yearsMap: yearsMap == const $CopyWithPlaceholder() || yearsMap == null
          ? _value.yearsMap
          // ignore: cast_nullable_to_non_nullable
          : yearsMap as Map<String, String>,
    );
  }
}

extension $ClassInfoStateCopyWith on ClassInfoState {
  /// Returns a callable class that can be used as follows: `instanceOfClassInfoState.copyWith(...)` or like so:`instanceOfClassInfoState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClassInfoStateCWProxy get copyWith => _$ClassInfoStateCWProxyImpl(this);
}

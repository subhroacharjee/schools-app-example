// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'danger_zone_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DangerZoneStateCWProxy {
  DangerZoneState className(String className);

  DangerZoneState error(String? error);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DangerZoneState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DangerZoneState(...).copyWith(id: 12, name: "My name")
  /// ````
  DangerZoneState call({
    String? className,
    String? error,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDangerZoneState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDangerZoneState.copyWith.fieldName(...)`
class _$DangerZoneStateCWProxyImpl implements _$DangerZoneStateCWProxy {
  final DangerZoneState _value;

  const _$DangerZoneStateCWProxyImpl(this._value);

  @override
  DangerZoneState className(String className) => this(className: className);

  @override
  DangerZoneState error(String? error) => this(error: error);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DangerZoneState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DangerZoneState(...).copyWith(id: 12, name: "My name")
  /// ````
  DangerZoneState call({
    Object? className = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
  }) {
    return DangerZoneState(
      className: className == const $CopyWithPlaceholder() || className == null
          ? _value.className
          // ignore: cast_nullable_to_non_nullable
          : className as String,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
    );
  }
}

extension $DangerZoneStateCopyWith on DangerZoneState {
  /// Returns a callable class that can be used as follows: `instanceOfDangerZoneState.copyWith(...)` or like so:`instanceOfDangerZoneState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DangerZoneStateCWProxy get copyWith => _$DangerZoneStateCWProxyImpl(this);
}

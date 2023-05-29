import 'package:equatable/equatable.dart';

class RegionInfo with EquatableMixin {
  RegionInfo({
    required this.title,
    required this.defaultTimeZone,
  });

  final String title;
  final String defaultTimeZone;

  @override
  List<Object?> get props => [
        title,
        defaultTimeZone,
      ];

  RegionInfo copyWith({
    String? title,
    String? defaultTimeZone,
  }) {
    return RegionInfo(
      title: title ?? this.title,
      defaultTimeZone: defaultTimeZone ?? this.defaultTimeZone,
    );
  }
}

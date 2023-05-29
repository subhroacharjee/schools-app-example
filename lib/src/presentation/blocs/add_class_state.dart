import 'package:equatable/equatable.dart';

class AddClassState with EquatableMixin {
  AddClassState({
    required this.name,
    required this.yearsMap,
    required this.yearId,
  });

  AddClassState.initial({
    required this.yearsMap,
  })  : name = null,
        yearId = null;

  final String? name;
  final Map<String, String> yearsMap;
  final String? yearId;

  @override
  List<Object?> get props => [
        name,
        yearsMap,
        yearId,
      ];

  AddClassState copyWith({
    String? name,
    String? yearId,
  }) =>
      AddClassState(
        name: name ?? this.name,
        yearId: yearId ?? this.yearId,
        yearsMap: yearsMap,
      );
}

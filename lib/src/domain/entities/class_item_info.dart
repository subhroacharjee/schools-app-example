import 'package:equatable/equatable.dart';

class ClassItemInfo with EquatableMixin {
  ClassItemInfo({
    required this.id,
    required this.name,
    required this.code,
    required this.hasStudents,
  });

  final String id;
  final String name;
  final String code;
  final bool hasStudents;

  @override
  List<Object?> get props => [
        id,
        name,
        code,
        hasStudents,
      ];

  ClassItemInfo copyWith({
    String? id,
    String? name,
    String? code,
    bool? hasStudents,
  }) {
    return ClassItemInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      hasStudents: hasStudents ?? this.hasStudents,
    );
  }
}

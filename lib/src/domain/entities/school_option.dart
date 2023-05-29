import 'package:equatable/equatable.dart';

class SchoolOption with EquatableMixin {
  SchoolOption({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}

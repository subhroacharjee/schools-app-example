import 'package:equatable/equatable.dart';

class ClassStudent with EquatableMixin {
  ClassStudent({
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

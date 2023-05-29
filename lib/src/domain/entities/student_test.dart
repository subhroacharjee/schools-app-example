import 'package:equatable/equatable.dart';

class StudentTest with EquatableMixin {
  StudentTest({
    required this.id,
    required this.paused,
    this.startedAt,
  });
  final String id;
  final bool paused;
  final DateTime? startedAt;

  @override
  List<Object?> get props => [
        id,
        paused,
        startedAt,
      ];
}

import 'package:assessments/src/domain/assessments.graphql.sanitized.dart';
import 'package:equatable/equatable.dart';

class SubtopicInfo with EquatableMixin {
  const SubtopicInfo({
    required this.id,
    required this.title,
    required this.icon,
  });
  factory SubtopicInfo.fromSubtopics(Subtopics subtopics) => SubtopicInfo(
        id: subtopics.id,
        title: subtopics.title,
        icon: subtopics.icon,
      );

  final String id;
  final String title;
  final String icon;

  @override
  List<Object?> get props => [
        id,
        title,
        icon,
      ];
  SubtopicInfo copyWith({String? id, String? title}) => SubtopicInfo(
        id: id ?? this.id,
        title: title ?? this.title,
        icon: icon,
      );
}

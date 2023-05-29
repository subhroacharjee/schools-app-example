import 'package:assessments/src/domain/assessments.graphql.sanitized.dart';
import 'package:equatable/equatable.dart';

class AssessmentTopicInfo with EquatableMixin {
  AssessmentTopicInfo({
    required this.id,
    required this.title,
  });

  factory AssessmentTopicInfo.fromAssessmentTopic(AssessmentTopic assessmentTopic) =>
      AssessmentTopicInfo(
        id: assessmentTopic.id,
        title: assessmentTopic.title,
      );

  final String id;

  final String title;

  @override
  List<Object?> get props => [
        id,
        title,
      ];
  AssessmentTopicInfo copyWith({
    String? id,
    String? title,
  }) =>
      AssessmentTopicInfo(
        id: id ?? this.id,
        title: title ?? this.title,
      );
}

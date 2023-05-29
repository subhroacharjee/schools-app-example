import 'package:schools_app/src/domain/entities/learn_ids.dart';

extension UriX on Uri {
  LearnIds get learnIds {
    String? topicId, subtopicId;
    if (pathSegments.contains('topic')) {
      topicId = pathSegments[pathSegments.indexOf('topic') + 1];
    }

    if (pathSegments.contains('subtopic')) {
      subtopicId = pathSegments[pathSegments.indexOf('subtopic') + 1];
    }

    return LearnIds(
      topicId: topicId,
      subtopicId: subtopicId,
    );
  }
}

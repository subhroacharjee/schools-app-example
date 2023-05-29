// ignore: implementation_imports
import 'package:learning_library/src/domain/entities/progress.dart';

class AssessmentSummary {
  const AssessmentSummary({
    required this.id,
    required this.finalProgress,
    required this.initialProgress,
    required this.timeSaved,
    required this.topicTitle,
    required this.topicId,
    required this.emoji,
  });

  final String id;
  final String emoji;
  final Progress finalProgress;
  final Progress initialProgress;
  final Duration timeSaved;
  final String topicTitle;
  final String topicId;
}

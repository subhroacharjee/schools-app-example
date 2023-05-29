import 'dart:async';

import 'package:assessments/assessments.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:learning_library/utils/learning_cache_service.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/presentation/layout/bloc/schools_app_bar_bloc.dart';
import 'package:testing/testing.dart';

@LazySingleton(as: AssessmentsConfigurer)
class SchoolsAssessmentsConfigurer extends AssessmentsConfigurer with ClassInfoCacheMixin {
  @override
  FutureOr<void> onAssessmentComplete(
    BuildContext context,
    AssessmentSummary assessmentSummary,
  ) async {
    LearningCacheService().clearKnowledgeCache(classId);
    classInfoCache.setTopicId(assessmentSummary.topicId);
    await showPopup(
      child: EndOfTestDialog.forAssessment(
        finalProgress: assessmentSummary.finalProgress,
        initialProgress: assessmentSummary.initialProgress,
        timeSaved: assessmentSummary.timeSaved,
        topicTitle: assessmentSummary.topicTitle,
        emoji: assessmentSummary.emoji,
      ),
      context: context,
    );
    // ignore: use_build_context_synchronously
    context
      ..read<SchoolsAppBarBloc>().refresh()
      ..go('/curriculum/topic/${assessmentSummary.topicId}');
  }
}

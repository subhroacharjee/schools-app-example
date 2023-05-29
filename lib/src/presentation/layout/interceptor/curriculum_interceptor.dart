import 'package:flutter/material.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/presentation/layout/interceptor/route_interceptor.dart';

class CurriculumInterceptor extends RouteInterceptor with ClassInfoCacheMixin {
  @override
  Uri? call(BuildContext context, Uri uri) {
    if (!uri.path.startsWith('/curriculum')) return null;

    String? effCurriculumPath;
    if (topicId != null && topicId!.isNotEmpty) {
      effCurriculumPath = '/curriculum/topic/${topicId!}';
      if (subtopicId != null && subtopicId!.isNotEmpty) {
        effCurriculumPath = '$effCurriculumPath/subtopic/${subtopicId!}';
      }
    }

    return effCurriculumPath == null ? null : Uri(path: effCurriculumPath);
  }
}

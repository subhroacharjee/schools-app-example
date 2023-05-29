import 'package:core/di.dart';
import 'package:flutter/material.dart';
import 'package:schools_app/src/presentation/layout/route_listeners/route_listener.dart';
import 'package:schools_app/src/services/class_info_cache.dart';
import 'package:schools_app/src/utils/extensions/uri_extensions.dart';

/// {@macro schools.routeListener}
class ClassInfoRouteListener extends RouteListener with ClassInfoCacheMixin {
  ClassInfoRouteListener();

  @override
  void call(BuildContext context, Uri uri) {
    final arguments = uri.queryParameters;

    final classId = arguments['classId'];

    if (classId != null) {
      classInfoCache.setClassId(classId);
    }

    final ids = uri.learnIds;
    if (ids.topicId != null) {
      classInfoCache.setTopicId(topicId);
      log.v('Setting topic id from listener: $topicId');
    }
    if (ids.subtopicId != null) {
      classInfoCache.setSubtopicId(subtopicId);
      log.v('Setting subtopic id from listener: $subtopicId');
    }
  }
}

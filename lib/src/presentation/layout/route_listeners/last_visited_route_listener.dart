import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/domain/entities/last_visited_data.dart';
import 'package:schools_app/src/domain/entities/learn_ids.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/layout/route_listeners/route_listener.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state_machine.dart';
import 'package:schools_app/src/services/class_info_cache.dart';
import 'package:schools_app/src/utils/extensions/uri_extensions.dart';

class LastVisitedRouteListener extends RouteListener with ClassInfoCacheMixin {
  LastVisitedRouteListener();

  @override
  void call(BuildContext context, Uri uri) {
    final node = context.read<SchoolsLayoutStateMachine>().node;
    if (node is TeacherLayoutNode && classId != null) {
      final lastData = node.lastVisitedRoutes[classId!] ?? LastVisitedUrlData(url: uri);

      LearnIds? learnIds;
      if (uri.path.contains('curriculum')) {
        learnIds = uri.learnIds;
      }

      // For path that is not curriculum we use the previously selected topic and subtopic
      node.lastVisitedRoutes[classId!] = LastVisitedUrlData(
        url: uri,
        topicId: learnIds == null ? lastData.topicId : learnIds.topicId,
        subtopicId: learnIds == null ? lastData.subtopicId : learnIds.subtopicId,
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/presentation/layout/bloc/schools_app_bar_bloc.dart';
import 'package:schools_app/src/presentation/layout/route_listeners/route_listener.dart';

class AppBarRouteListener extends RouteListener with ClassInfoCacheMixin {
  AppBarRouteListener(this.bloc);

  final SchoolsAppBarBloc bloc;
  SchoolsAppBarType? previousAppBarType;
  String? previousPath;

  String? previousClassId;

  @override
  void call(BuildContext context, Uri uri) {
    SchoolsAppBarType? type;

    final path = uri.path;

    bool hasSubtopic = false;
    bool hasTopic = false;
    bool classChanged = false;

    if (path.startsWith('/curriculum')) {
      hasTopic = path.contains('topic');
      hasSubtopic = path.contains('subtopic');
    } else {
      hasTopic = topicId != null;
      hasSubtopic = subtopicId != null;
    }

    if (previousClassId != classId) {
      if (previousClassId == null) {
        previousClassId = classId;
        return;
      }
      previousClassId = classId;
      classChanged = true;

      final node = context.read<SchoolsLayoutStateMachine>().node;
      if (node is TeacherLayoutNode) {
        final lastData = node.lastVisitedRoutes[classId!];

        if (lastData != null) {
          hasSubtopic = lastData.subtopicId != null;
          hasTopic = lastData.topicId != null;
        }
      }
    }

    if (hasSubtopic) {
      type = SchoolsAppBarType.subtopic;
    } else if (hasTopic) {
      type = SchoolsAppBarType.topic;
    }

    if (classChanged || type != previousAppBarType) {
      previousPath = path;
      previousAppBarType = type ?? SchoolsAppBarType.learn;

      bloc.reload(type: type);
      previousPath = path;
    }
  }
}

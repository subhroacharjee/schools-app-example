import 'package:flutter/material.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/presentation/layout/interceptor/route_interceptor.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/utils/build_context_extensions.dart';

class JoinClassInterceptor extends RouteInterceptor with ClassInfoCacheMixin {
  @override
  Uri? call(BuildContext context, Uri uri) {
    if (!uri.path.startsWith('/join')) return null;

    if (context.stateMachine.node is TeacherLayoutNode) {
      return Uri(path: Routes.curriculum.blueprint);
    }

    return null;
  }
}

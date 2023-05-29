import 'package:flutter/material.dart';

abstract class RouteInterceptor {
  Uri? call(BuildContext context, Uri uri);
}

mixin RouteGuardMixin on RouteInterceptor {
  /// List of routes that are guarded by this interceptor
  List<String> get guardedRoutes => [];

  /// List of routes that are not guarded by this interceptor.
  /// This is useful when you want to guard all routes except a few
  List<String> get unguardedRoutes => [];

  /// Returns true if the route is guarded by this interceptor
  bool isGuardedRoute(String route) {
    if (guardedRoutes.isNotEmpty) {
      return guardedRoutes.where((r) => route.contains(RegExp(r))).isNotEmpty;
    }

    if (unguardedRoutes.isNotEmpty) {
      return unguardedRoutes.where((r) => route.contains(RegExp(r))).isEmpty;
    }

    return true;
  }

  bool isUnguardedRoute(String route) => !isGuardedRoute(route);
}

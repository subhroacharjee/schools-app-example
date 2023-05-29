import 'package:core/di.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/presentation/layout/interceptor/route_interceptor.dart';

class RedirectHandler {
  const RedirectHandler({
    this.interceptors = const [],
  });

  final List<RouteInterceptor> interceptors;

  String? call(BuildContext context, GoRouterState state) {
    final initialUri = Uri.parse(state.location);
    Uri uri = initialUri;

    for (final interceptor in interceptors) {
      uri = interceptor(context, uri) ?? uri;
    }

    if (uri != initialUri) {
      log.v('Redirecting to $uri');
      return uri.toString();
    }

    return null;
  }
}

import 'package:flutter/material.dart';

/// {@template schools.routeListener}
/// Route listeners can be used to observe route changes,
/// unlike interceptors observers are not able to change the route
/// {@endtemplate}
abstract class RouteListener {
  void call(BuildContext context, Uri uri);
}

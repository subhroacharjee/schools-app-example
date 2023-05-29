import 'package:flutter/material.dart';
import 'package:schools_app/src/presentation/layout/route_refresh_widget.dart';

extension BuildContextX on BuildContext {
  void refreshRoute() => RouteRefreshWidget.refreshRoute(this);
}

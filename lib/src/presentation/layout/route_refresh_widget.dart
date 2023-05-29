import 'package:flutter/material.dart';

class RouteRefreshWidget extends InheritedWidget {
  const RouteRefreshWidget({
    required Widget child,
    required this.refreshListener,
    Key? key,
  }) : super(key: key, child: child);

  final ValueNotifier<bool> refreshListener;

  static void refreshRoute(BuildContext context) {
    final refresh = RouteRefreshWidget._of(context);
    if (refresh != null) {
      refresh.refreshListener.value = !refresh.refreshListener.value;
    }
  }

  @override
  bool updateShouldNotify(covariant RouteRefreshWidget oldWidget) {
    return false;
  }

  static RouteRefreshWidget? _of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RouteRefreshWidget>();
  }
}

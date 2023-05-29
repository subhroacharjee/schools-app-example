import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/presentation/theme/constants/constants.dart';
import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/layout/route_listeners/route_listener.dart';
import 'package:schools_app/src/presentation/layout/schools_app_bar.dart';
import 'package:schools_app/src/presentation/sidebar/schools_app_sidebar.dart';
import 'package:schools_app/src/presentation/utils/build_context_extensions.dart';

class SchoolsNestedLayout extends StatefulWidget {
  const SchoolsNestedLayout({
    required this.node,
    required this.child,
    required this.routerStateNotifier,
    this.routeListeners = const [],
    super.key,
  });

  final SchoolsLayoutNode node;
  final Widget child;
  final ValueNotifier routerStateNotifier;
  final List<RouteListener> routeListeners;

  @override
  State<SchoolsNestedLayout> createState() => _SchoolsNestedLayoutState();
}

class _SchoolsNestedLayoutState extends State<SchoolsNestedLayout> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.stateMachine.handleInitialItemSelection(context);

    routeListener();
    GoRouter.of(context)
      ..removeListener(routeListener)
      ..addListener(routeListener);
  }

  void routeListener() {
    final uri = Uri.parse(GoRouter.of(context).location);
    for (final listener in widget.routeListeners) {
      listener(context, uri);
      widget.routerStateNotifier.value = GoRouterState.of(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = widget.node;
    final shouldRenderChild = !(node is TeacherLayoutNode &&
        node.state.data?.classes != null &&
        node.state.data!.classes.isEmpty);

    final sidebar = BlocBuilder<LayoutNode, AsyncSnapshot<LayoutState>>(
      bloc: widget.node,
      buildWhen: (p, c) => p.data?.isSidebarHidden != c.data?.isSidebarHidden,
      builder: (_, data) => data.whenData(
        data: (_) => SchoolsAppSidebar(node: widget.node),
        orElse: () => empty,
      ),
    );
    return Column(
      children: [
        const SchoolsAppBar(),
        Expanded(
          child: Row(
            children: [
              sidebar,
              Expanded(child: shouldRenderChild ? widget.child : empty),
            ],
          ),
        ),
      ],
    );
  }
}

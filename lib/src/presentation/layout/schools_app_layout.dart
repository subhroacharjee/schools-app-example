import 'package:components/components.dart';
import 'package:core_flutter/presentation/shell/feature.dart';
import 'package:core_flutter/presentation/shell/layout/layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state_machine.dart';
import 'package:schools_app/src/presentation/layout/schools_main_layout.dart';
import 'package:schools_app/src/presentation/utils/pages.dart';

class SchoolsAppLayout extends Layout {
  SchoolsAppLayout({
    this.initialRoute,
  }) : super();

  String? initialRoute;

  @override
  Widget build(BuildContext context, List<Feature> features) {
    return _SchoolsAppLayout(features.whereType<SchoolsAppFeature>().toList());
  }
}

class _SchoolsAppLayout extends StatefulWidget {
  const _SchoolsAppLayout(this.features);

  final List<SchoolsAppFeature> features;

  @override
  State<_SchoolsAppLayout> createState() => _SchoolsAppLayoutState();
}

class _SchoolsAppLayoutState extends State<_SchoolsAppLayout> {
  late final _layoutStateMachine = SchoolsLayoutStateMachine(widget.features);

  GoRouter? _goRouter;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _goRouter ??= GoRouter(
      initialLocation: '/loading',
      debugLogDiagnostics: kDebugMode,
      routes: [
        GoRoute(
          path: '/:path(.*)',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            name: state.name,
            child: SchoolsMainLayout(features: widget.features),
          ),
        ),
        // ...Routes.commonRoutes,
      ],
      errorPageBuilder: notFoundPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _layoutStateMachine,
      child: MaterialApp.router(
        title: 'Tutero',
        theme: AppTheme.light,
        routeInformationParser: _goRouter!.routeInformationParser,
        routerDelegate: _goRouter!.routerDelegate,
        routeInformationProvider: _goRouter!.routeInformationProvider,
      ),
    );
  }
}

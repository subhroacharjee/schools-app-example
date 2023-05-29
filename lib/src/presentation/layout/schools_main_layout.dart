import 'package:assessments/assessments.dart';
import 'package:components/components.dart';
import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:core_flutter/presentation/screens/loading_screen.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:core_flutter/utils/extensions/build_context_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/blocs/add_school_bloc.dart';
import 'package:schools_app/src/presentation/blocs/student_active_test_bloc.dart';
import 'package:schools_app/src/presentation/layout/interceptor/curriculum_interceptor.dart';
import 'package:schools_app/src/presentation/layout/interceptor/join_class_interceptor.dart';
import 'package:schools_app/src/presentation/layout/interceptor/redirect_handler.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/unauthenticated_layout_node.dart';
import 'package:schools_app/src/presentation/layout/route_listeners/app_bar_route_listener.dart';
import 'package:schools_app/src/presentation/layout/route_listeners/last_visited_route_listener.dart';
import 'package:schools_app/src/presentation/layout/route_listeners/route_listener.dart';
import 'package:schools_app/src/presentation/layout/route_refresh_widget.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state_machine.dart';
import 'package:schools_app/src/presentation/layout/schools_nested_layout.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';
import 'package:schools_app/src/presentation/utils/logout.dart';
import 'package:schools_app/src/presentation/utils/pages.dart';
import 'package:schools_app/src/presentation/widgets/popups/add_class_popup.dart';
import 'package:schools_app/src/presentation/widgets/popups/add_school_popup.dart';

import 'bloc/schools_app_bar_bloc.dart';
import 'route_listeners/class_info_route_listener.dart';

class SchoolsMainLayout extends StatefulWidget {
  const SchoolsMainLayout({
    required this.features,
    super.key,
  });

  final List<SchoolsAppFeature> features;

  @override
  State<SchoolsMainLayout> createState() => _SchoolsMainLayoutState();
}

class _SchoolsMainLayoutState extends State<SchoolsMainLayout> {
  String? _initialLocation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initialLocation = GoRouterState.of(context).location;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: BlocConsumer<SchoolsLayoutStateMachine, ILayoutNode>(
        listener: (_, node) {
          if (node is SchoolsLayoutNode && node.state.data != null) {
            _initialLocation = null;
          }
        },
        listenWhen: (_, __) => _initialLocation != null,
        builder: (context, node) {
          if (node is UnauthenticatedLayoutNode) {
            return BlocProvider.value(
              value: node,
              child: _SchoolsMainLayoutBody(initialLocation: _initialLocation),
            );
          } else if (node is SchoolsLayoutNode) {
            return BlocProvider.value(
              value: node,
              child: _SchoolsMainLayoutBody(
                initialLocation: _initialLocation,
              ),
            );
          } else {
            return LoadingScreen(
              onBackToLogin: logOut,
              redirect: (_, __) async {},
            );
          }
        },
      ),
    );
  }
}

class _SchoolsMainLayoutBody extends StatefulWidget {
  const _SchoolsMainLayoutBody({
    required this.initialLocation,
  });

  final String? initialLocation;

  @override
  State<_SchoolsMainLayoutBody> createState() => _SchoolsMainLayoutBodyState();
}

class _SchoolsMainLayoutBodyState extends State<_SchoolsMainLayoutBody> {
  final refreshListener = ValueNotifier<bool>(false);
  late final AddSchoolBloc addSchoolBloc;

  final _appBarBloc = SchoolsAppBarBloc();
  final _routerStateNotifier = ValueNotifier<GoRouterState?>(null);
  GoRouter? _router;

  late final List<RouteListener> _routeListeners = [
    ClassInfoRouteListener(),
    AppBarRouteListener(_appBarBloc),
    LastVisitedRouteListener(),
  ];

  @override
  void initState() {
    super.initState();
    addSchoolBloc = AddSchoolBloc();
    _routerStateNotifier.addListener(_onRouterStateChanged);
  }

  @override
  void dispose() {
    _routerStateNotifier.removeListener(_onRouterStateChanged);
    if (!addSchoolBloc.isClosed) {
      addSchoolBloc.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stateMachine = context.watch<SchoolsLayoutStateMachine>();
    bool recreateRouter = true;

    return BlocProvider.value(
      value: _appBarBloc,
      child: RouteRefreshWidget(
        refreshListener: refreshListener,
        child: BlocConsumer<SchoolsLayoutStateMachine, ILayoutNode>(
          bloc: stateMachine,
          listener: (_, __) => _router?.go(Routes.loading.blueprint),
          listenWhen: (p, c) => p is! LoadingLayoutNode && c is UnauthenticatedLayoutNode,
          builder: (context, node) {
            recreateRouter = true;
            if (node is! SchoolsLayoutNode) {
              return LoadingScreen(
                onBackToLogin: logOut,
                redirect: (_, __) async {},
              );
            }

            return MultiBlocListener(
              listeners: [
                BlocListener<SchoolsLayoutNode, AsyncSnapshot<SchoolsLayoutState>>(
                  bloc: node,
                  listenWhen: (_, c) => c.data is TeacherLayoutState,
                  listener: (_, snap) {
                    snap.whenData(
                      data: (data) {
                        if ((data as TeacherLayoutState).redirectRoute != null) {
                          _router?.go(data.redirectRoute!);
                          (node as TeacherLayoutNode).clearRedirectRoute();
                        }
                      },
                      orElse: () => log.e('Could not resolve TeacherLayoutState'),
                    );
                  },
                ),
                BlocListener<SchoolsLayoutNode, AsyncSnapshot<SchoolsLayoutState>>(
                  bloc: node,
                  listenWhen: (p, c) {
                    final previous = p.data;
                    final current = c.data;
                    if (current is TeacherLayoutState) {
                      if (previous is TeacherLayoutState) {
                        return previous.onboardingState !=
                                TeacherOnboardingState.createdFirstClass &&
                            previous.onboardingState != current.onboardingState;
                      } else {
                        return true;
                      }
                    }

                    return false;
                  },
                  listener: (context, snap) {
                    snap.whenData(
                      data: (data) async {
                        final signUpState = (data as TeacherLayoutState).onboardingState;
                        node as TeacherLayoutNode;
                        await Future.delayed(
                          Duration(
                            milliseconds: context.isShowingADialog() ? 400 : 0,
                          ),
                          () async {
                            switch (signUpState) {
                              case TeacherOnboardingState.accountCreated:
                                // The only flow that will finish this await is adding a school so
                                // we're free to assume that we can transition to joinedSchool safely
                                await showPopup(
                                  child: AddSchoolPopup(
                                    bloc: addSchoolBloc,
                                    isDismissible: false,
                                  ),
                                  context: context,
                                  barrierDismissible: false,
                                );
                                node.changeOnboardingState(TeacherOnboardingState.joinedSchool);
                                break;

                              case TeacherOnboardingState.joinedSchool:
                                final action = (await showPopup<AddClassPopupAction>(
                                  child: BlocProvider.value(
                                    value: node,
                                    child: const AddClassPopup(
                                      title: 'Create Your First Class',
                                      isDismissible: false,
                                      showBackButton: true,
                                    ),
                                  ),
                                  context: context,
                                ))!;
                                switch (action) {
                                  case AddClassPopupAction.added:
                                    node.changeOnboardingState(
                                      TeacherOnboardingState.createdFirstClass,
                                    );
                                    addSchoolBloc.close();
                                    node.resolve();
                                    break;
                                  case AddClassPopupAction.back:
                                    node.changeOnboardingState(
                                      TeacherOnboardingState.accountCreated,
                                    );
                                    break;
                                }
                                break;

                              case TeacherOnboardingState.createdFirstClass:
                              default:
                                break;
                            }
                          },
                        );
                      },
                      orElse: () => log.e('Could not resolve TeacherLayoutState'),
                    );
                  },
                ),
              ],
              child: BlocBuilder<SchoolsLayoutNode, AsyncSnapshot<SchoolsLayoutState>>(
                bloc: node,
                builder: (context, state) {
                  return state.when(
                    data: (state) {
                      if (recreateRouter || _router == null) {
                        recreateRouter = false;
                        _router = GoRouter(
                          initialLocation: widget.initialLocation ?? Routes.loading.blueprint,
                          debugLogDiagnostics: kDebugMode,
                          refreshListenable: refreshListener,
                          routes: [
                            ShellRoute(
                              routes: [
                                ...state.routes,
                              ],
                              pageBuilder: (_, state, child) => MaterialPage(
                                child: SchoolsNestedLayout(
                                  node: node,
                                  routerStateNotifier: _routerStateNotifier,
                                  routeListeners: _routeListeners,
                                  child: child,
                                ),
                              ),
                            ),
                            ...Routes.commonRoutes,
                          ],
                          redirect: RedirectHandler(
                            interceptors: [
                              CurriculumInterceptor(),
                              JoinClassInterceptor(),
                            ],
                          ),
                          errorPageBuilder: notFoundPage,
                        );
                      }

                      final router = Router.withConfig(config: _router!);
                      if (state is StudentLayoutState) {
                        final activeTestBloc = state.activeTestBloc;
                        return BlocListener<StudentActiveTestBloc,
                            AsyncSnapshot<StudentActiveTestState>>(
                          bloc: activeTestBloc,
                          listenWhen: (_, c) => c.data?.testId != null,
                          listener: (context, snap) {
                            snap.whenData(
                              data: (data) async {
                                final testId = data.testId!;
                                if (!(data.complete ?? true)) {
                                  final inTestingPage =
                                      _router!.location.contains(Routes.testing.blueprint);
                                  if (!inTestingPage) {
                                    await showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (_) => StartingAssessmentPopup(
                                        testId: testId,
                                        isPaused: false,
                                      ),
                                    );
                                    // ignore: use_build_context_synchronously
                                    _router!.go('/testing?id=$testId');
                                  }
                                }
                              },
                              orElse: () {},
                            );
                          },
                          child: router,
                        );
                      }

                      return router;
                    },
                    loading: () => LoadingScreen(
                      onBackToLogin: logOut,
                      redirect: (_, __) async {},
                    ),
                    err: (_, __) => const TText(
                      'An error occurred',
                      style: TTextStyle.mediumL(color: TColors.danger),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  void _onRouterStateChanged() {
    final state = _routerStateNotifier.value;
    if (state != null) {
      context.read<SchoolsLayoutStateMachine>().onRouteChanged(context, state);
    }
  }
}

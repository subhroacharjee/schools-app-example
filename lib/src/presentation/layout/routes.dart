import 'package:assessments/assessments.dart';
import 'package:core/di.dart';
import 'package:core_flutter/presentation/screens/loading_screen.dart';
import 'package:core_flutter/presentation/screens/not_found_screen.dart';
import 'package:core_flutter/presentation/shell/navigation/route_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learn/learn.dart';
import 'package:pre_signup/pre_signup.dart';
import 'package:schools_app/src/presentation/layout/bloc/schools_app_bar_bloc.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state_machine.dart';
import 'package:schools_app/src/presentation/screens/class_settings_screen.dart';
import 'package:schools_app/src/presentation/screens/join_class_screen.dart';
import 'package:schools_app/src/presentation/screens/schools_settings_screen.dart';
import 'package:schools_app/src/presentation/utils/logout.dart';
import 'package:schools_app/src/presentation/widgets/class_id_builder.dart';
import 'package:schools_app/src/presentation/widgets/maths_platform_rebuilder.dart';
import 'package:schools_app/src/services/class_info_cache.dart';
import 'package:students/students.dart';
import 'package:testing/testing.dart';

class Routes {
  const Routes._();

  static const login = SimpleRouteInfo(title: 'Login', blueprint: '/login');
  static const loading = SimpleRouteInfo(title: 'Loading', blueprint: '/loading');
  static const curriculum = SimpleRouteInfo(title: 'Curriculum', blueprint: '/curriculum');
  static const testing = SimpleRouteInfo(title: 'Testing', blueprint: '/testing');
  static const assessments = SimpleRouteInfo(title: 'Assessments', blueprint: '/assessments');
  static const students = SimpleRouteInfo(title: 'Students', blueprint: '/students');
  static const statistics = SimpleRouteInfo(title: 'Statistics', blueprint: '/statistics');
  static const learningTasks =
      SimpleRouteInfo(title: 'Learning Tasks', blueprint: '/learning-tasks');

  static final curriculumRoute = ShellRoute(
    pageBuilder: (context, state, child) => MaterialPage(
      key: state.pageKey,
      child: child,
    ),
    routes: learnRoutes,
  );

  static final testingRoute = GoRoute(
    path: testing.blueprint,
    pageBuilder: (_, state) => MaterialPage(
      key: state.pageKey,
      child: TestingScreen.existing(
        testId: state.queryParams['id']!,
        onComplete: (context, completeState) {
          gi<ClassInfoCache>().setTopicId(completeState.topicId);
          context
            ..read<SchoolsAppBarBloc>().refresh()
            ..go('/curriculum/topic/${completeState.topicId}');
        },
      ),
    ),
  );

  static final preSignupRoute = ShellRoute(
    builder: (context, state, child) {
      final topicId = state.params['topicId'];
      final subtopicId = state.params['subtopicId'];

      return PreSignupLayout(
        topicId: topicId,
        subtopicId: subtopicId,
        child: child,
      );
    },
    routes: learnRoutes,
  );

  static final assessmentsRoute = GoRoute(
    path: assessments.blueprint,
    name: assessments.title,
    pageBuilder: (context, state) => MaterialPage(
      child: ClassIdBuilder(
        builder: (_, classId) => AssessmentsScreen(
          key: ValueKey(classId),
        ),
      ),
    ),
  );
  static final studentsRoute = GoRoute(
    path: students.blueprint,
    name: students.title,
    pageBuilder: (context, state) => MaterialPage(
      child: ClassIdBuilder(
        builder: (_, classId) => StudentsScreen(
          key: ValueKey(classId),
        ),
      ),
    ),
  );

  static final classSettingsRoute = GoRoute(
    path: '/class-settings/:id',
    name: 'Class Settings',
    pageBuilder: (context, state) => MaterialPage(
      child: ClassSettingsScreen(classId: state.params['id']!),
    ),
  );

  static final loadingRoute = GoRoute(
    path: loading.blueprint,
    pageBuilder: (_, __) {
      return MaterialPage(
        child: LoadingScreen(
          onBackToLogin: logOut,
          redirect: (context, resetTimer) {
            return context.read<SchoolsLayoutStateMachine>().getHomeRoute().then((info) {
              final route = info.route;
              if (Routes.loading.hasMatch(route)) {
                resetTimer();
              } else {
                log.d('Redirecting to $route');
                context.go(route);
              }
            });
          },
        ),
      );
    },
  );

  static final teacherRoutes = [
    curriculumRoute,
    assessmentsRoute,
    studentsRoute,
  ];

  static final studentRoutes = [
    curriculumRoute,
  ];

  static final unauthenticatedRoutes = [
    preSignupRoute,
  ];

  static final commonRoutes = [
    loadingRoute,
    GoRoute(
      path: '/join',
      pageBuilder: (context, state) => const MaterialPage(child: JoinClassScreen()),
      routes: [
        GoRoute(
          path: ':code',
          pageBuilder: (_, state) => MaterialPage(
            child: JoinClassScreen(code: state.params['code']),
          ),
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      pageBuilder: (_, __) => const MaterialPage(child: SchoolsSettingsScreen()),
    ),
    testingRoute,
    classSettingsRoute,
  ];

  static final learnRoutes = [
    GoRoute(
      name: 'Curriculum',
      path: '/curriculum',
      pageBuilder: (_, __) => MaterialPage(
        child: MathsPlatformRebuilder(
          child: LearnScreen(
            showAppBar: false,
            onNavigateToTopicScreen: (context, topicId) {
              gi<ClassInfoCache>().setTopicId(topicId);
              context.go('/curriculum/topic/$topicId');
            },
          ),
        ),
      ),
      routes: [
        GoRoute(
          name: 'Topic',
          path: 'topic/:topicId',
          builder: (_, state) {
            final topicId = state.params['topicId'];
            if (topicId == null) return const NotFoundScreen();

            return MathsPlatformRebuilder(
              child: TopicScreen(
                id: topicId,
                onNavigateBack: (context, _) => context.go('/curriculum'),
                showAvatarMenu: false,
                showAppBar: false,
              ),
            );
          },
          routes: [
            GoRoute(
              name: 'Subtopic',
              path: 'subtopic/:subtopicId',
              builder: (context, state) {
                final topicId = state.params['topicId'];
                final subtopicId = state.params['subtopicId'];
                if (topicId == null || subtopicId == null) return const NotFoundScreen();

                return MathsPlatformRebuilder(
                  child: SubtopicScreen(
                    topicId: topicId,
                    subtopicId: subtopicId,
                    color: null,
                    onNavigateBack: (context, _) => context.go('/curriculum/topic/$topicId'),
                    showAppBar: false,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ];
}

import 'dart:async';

import 'package:core_flutter/presentation/screens/not_found_screen.dart';
import 'package:core_flutter/presentation/shell/feature.dart';
import 'package:core_flutter/presentation/shell/navigation/route.dart';
import 'package:go_router/go_router.dart';
import 'package:learn/learn.dart';
import 'package:pre_signup/src/presentation/screen/pre_signup_intro_screen.dart';

import 'di.dart' as presignup_di;

class PreSignupFeature extends Feature {
  PreSignupFeature() : super(name: 'PreSignup');

  @override
  List<Route> get routes => [
        Route(
          title: name,
          path: '/pre-signup',
          builder: (_, __) => const PreSignupIntroScreen(),
          subroutes: [
            Route(
              title: 'Pre-Signup',
              path: 'curriculum',
              builder: (_, __) => LearnScreen(
                showAppBar: false,
                onNavigateToTopicScreen: (context, topicId) => context.go(
                  '/pre-signup/topic/$topicId',
                ),
              ),
            ),
            Route(
              title: 'Pre-Topic',
              path: 'topic/:topicId',
              builder: (_, state) {
                final topicId = state.pathParameters['topicId'];
                if (topicId == null) return const NotFoundScreen();

                return TopicScreen(
                  id: topicId,
                  onNavigateBack: (context, _) => context.go('/'),
                  showAvatarMenu: false,
                  showAppBar: false,
                );
              },
              subroutes: [
                Route(
                  title: 'Pre-Subtopic',
                  path: 'subtopic/:subtopicId',
                  builder: (context, state) {
                    final topicId = state.pathParameters['topicId'];
                    final subtopicId = state.pathParameters['subtopicId'];
                    if (topicId == null || subtopicId == null) return const NotFoundScreen();

                    return SubtopicScreen(
                      topicId: topicId,
                      subtopicId: subtopicId,
                      color: null,
                      onNavigateBack: (context, _) => context.go(
                        '/pre-signup/topic/$topicId',
                      ),
                      showAppBar: false,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ];

  @override
  FutureOr<void> configureDependencies() async => presignup_di.configureDependencies();
}

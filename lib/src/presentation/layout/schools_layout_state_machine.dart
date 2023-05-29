// ignore_for_file: use_build_context_synchronously

import 'package:core/di.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/marketplace/marketplace_user.dart';
import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:core_flutter/presentation/shell/navigation/route_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn/learn.dart';
import 'package:oxidized/oxidized.dart';
import 'package:rxdart/rxdart.dart';
import 'package:schools_app/src/domain/configurers/schools_learn_configurer.dart';
import 'package:schools_app/src/domain/configurers/schools_skill_info_configurer.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/student_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/unauthenticated_layout_node.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/services/class_info_cache.dart';
import 'package:skill_info/skill_info.dart';

class SchoolsLayoutStateMachine extends LayoutStateMachine with ClassInfoCacheMixin {
  SchoolsLayoutStateMachine(
    this.features, {
    this.onLoggedOut,
  });
  final VoidCallback? onLoggedOut;

  final List<SchoolsAppFeature> features;
  // HACK: This takes care of not showing the join class popup multiple times
  final Map<String, bool> handledClassCodes = {};

  @override
  Future<void> handleSignedIn(TResult<UserType> userTypeR) async {
    log.v('handleSignedIn($userTypeR)');
    userTypeR.when(
      ok: (userType) async {
        // TODO(oliatienza): Provide `userType` through cache or something like UserId
        (gi<LearnConfigurer>() as SchoolsLearnConfigurer).userType = userType;
        (gi<SkillInfoConfigurer>() as SchoolsSkillInfoConfigurer).userType = userType;
        switch (userType) {
          case UserType.student:
            // Check if this is a MarketplaceStudent by trying to fetch their MarketplaceUserDocument
            await GetMarketplaceUser.active()().when(
              ok: (_) => transition(LoadingLayoutNode()),
              err: (_) => transition(StudentLayoutNode()),
            );

            break;
          case UserType.teacher:
            if (node is UnauthenticatedLayoutNode) {
              classInfoCache
                ..setTopicId(null)
                ..setSubtopicId(null);
            }
            transition(TeacherLayoutNode());
            break;
          default:
            transition(LoadingLayoutNode());
        }
      },
      err: log.e,
    );
  }

  @override
  void handleSignedOut() {
    log.v('handleSignedIn()');
    (gi<LearnConfigurer>() as SchoolsLearnConfigurer).userType = null;
    (gi<SkillInfoConfigurer>() as SchoolsSkillInfoConfigurer).userType = null;
    if (node is! LoadingLayoutNode && node is SchoolsLayoutNode) {
      onLoggedOut?.call();
    }
    handledClassCodes.clear();
    transition(UnauthenticatedLayoutNode());
  }

  @override
  Future<SimpleRouteInfo> resolveHomeRoute(bool signedIn) async {
    if (signedIn && node is SchoolsLayoutNode) {
      return (node as SchoolsLayoutNode).initialRoute();
    } else if (node is LoadingLayoutNode) {
      return Routes.loading;
    } else {
      return Routes.curriculum;
    }
  }

  @override
  Future<void> handleInitialItemSelection(BuildContext context) async {
    if (isInitialized) return;
    super.handleInitialItemSelection(context);
    _handleItemSelection(path: GoRouterState.of(context).fullpath ?? '', context: context);
  }

  Future<void> onRouteChanged(
    BuildContext context,
    GoRouterState state,
  ) async =>
      _handleItemSelection(
        path: state.fullpath ?? '',
        context: context,
        navigateOnSelect: false,
      );

  Future<void> _handleItemSelection({
    required String path,
    required BuildContext context,
    bool navigateOnSelect = true,
  }) async {
    final firstNode = (node is SchoolsLayoutNode)
        ? node as SchoolsLayoutNode
        : await stream.whereType<SchoolsLayoutNode>().first;
    final sidebarBloc = firstNode.state.data != null
        ? firstNode.state.data!.sidebarBloc
        : await firstNode.stream
            .where((state) => state.data != null)
            .map((state) => state.data!.sidebarBloc)
            .first;

    if (node is SchoolsLayoutNode) {
      final routesMap = (node as SchoolsLayoutNode).featureToRoute;

      for (final data in routesMap.entries) {
        if (data.value.hasMatch(path)) {
          sidebarBloc.select(
            context,
            data.key,
            navigateOnSelect: navigateOnSelect,
          );
          break;
        }
      }
    }
  }
}

import 'dart:async';

import 'package:core/di.dart';
import 'package:core_flutter/presentation/layout/select_strategy.dart';
import 'package:flutter/material.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_bloc.dart';

extension SchoolsLayoutNodeX on SchoolsLayoutNode {
  SidebarItemBloc toSidebarItemBloc(
    SchoolsAppFeature feature, {
    ISelectStrategy? selectStrategy,
    bool locked = false,
  }) =>
      SidebarItemBloc(
        id: feature.id,
        color: feature.color,
        iconPath: 'packages/schools_app/assets/sidebar_icons/${feature.iconAsset}.svg',
        isLocked: locked,
        name: feature.name,
        selectStrategy:
            selectStrategy ?? GoRouterNavigatorSelectStrategy(featureToRoute[feature.id]!),
      );
}

mixin SchoolsLayoutNodeRetryMixin<T extends SchoolsLayoutState> on SchoolsLayoutNode<T> {
  bool _resolving = false;
  Timer? _timer;

  Duration get retryInterval => const Duration(seconds: 5);

  Future<void> retriedResolve();

  @override
  Future<void> resolve() async {
    try {
      _resolving = true;
      await retriedResolve();
    } catch (e) {
      log.e(e);
    } finally {
      _resolving = false;
    }
  }

  void enableRetry() {
    _timer ??= Timer.periodic(
      retryInterval,
      (_) {
        if (!_resolving && state.connectionState == ConnectionState.waiting) {
          resolve();
        } else if (state.data != null) {
          disableRetry();
        }
      },
    );
  }

  void disableRetry() {
    _timer?.cancel();
    _timer = null;
  }
}

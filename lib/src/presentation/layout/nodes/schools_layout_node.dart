import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:core_flutter/presentation/shell/navigation/route_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state_machine.dart';

enum SchoolsLayoutType {
  unauthenticated,
  teacher,
  student,
}

abstract class SchoolsLayoutNode<State extends SchoolsLayoutState> extends LayoutNode<State> {
  Map<FeatureId, SimpleRouteInfo> get featureToRoute;

  SchoolsLayoutType get layoutType;

  List<SchoolsAppFeature> get features => (stateMachine as SchoolsLayoutStateMachine)
      .features
      .where((e) => e.appearsIn.contains(layoutType))
      .toList();

  @override
  void onLogoTap(BuildContext context) => context.go('/home');
}

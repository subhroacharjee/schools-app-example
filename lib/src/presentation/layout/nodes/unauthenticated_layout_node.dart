import 'package:accounts_library/presentation/widgets/sign_up_popup.dart';
import 'package:core_flutter/presentation/layout/select_strategy.dart';
import 'package:core_flutter/presentation/shell/navigation/route_info.dart';
import 'package:flutter/material.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/layout/helpers.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_bloc.dart';

class UnauthenticatedLayoutNode extends SchoolsLayoutNode<UnauthenticatedLayoutState> {
  @override
  SchoolsLayoutType get layoutType => SchoolsLayoutType.unauthenticated;

  @override
  Map<FeatureId, SimpleRouteInfo> get featureToRoute => {
        FeatureId.curriculum: Routes.curriculum,
        FeatureId.students: Routes.students,
        FeatureId.assessments: Routes.assessments,
      };

  @override
  Future<SimpleRouteInfo> initialRoute() async => Routes.curriculum;

  @override
  Future<void> resolve() async {
    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        UnauthenticatedLayoutState(
          isSidebarHidden: true,
          initialRoute: await initialRoute(),
          sidebarBloc: SidebarBloc(
            features.map((e) {
              if ([FeatureId.students, FeatureId.assessments].contains(e.id)) {
                return toSidebarItemBloc(
                  e,
                  selectStrategy: PopupSelectStrategy(
                    const SignUpPopup(),
                  ),
                );
              }
              return toSidebarItemBloc(e);
            }).toList(),
          ),
          routes: [
            ...Routes.unauthenticatedRoutes,
          ],
        ),
      ),
    );
  }
}

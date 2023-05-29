import 'package:core_flutter/presentation/layout/select_strategy.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/blocs/sidebar_state.dart';

class SidebarBloc extends Cubit<SidebarState> {
  SidebarBloc(List<SidebarItemBloc> blocs)
      : assert(blocs.isNotEmpty, 'Must have at least one feature'),
        super(
          SidebarState(
            items: blocs,
            selectedFeatureId: blocs.first.id,
          ),
        );

  Future<void> select(
    BuildContext context,
    FeatureId id, {

    ///  When the url changes to the feature's url, no further navigation is needed.
    bool navigateOnSelect = true,
  }) async {
    final item = state.items.firstWhere((e) => e.id == id);
    final strategy = item.state.selectStrategy;

    if (navigateOnSelect) {
      strategy(context);
    }

    if (strategy is NavigatorSelectStrategy) {
      emit(
        SidebarState(
          items: state.items,
          selectedFeatureId: id,
        ),
      );
    }
  }
}

class SidebarItemBloc extends Cubit<SidebarItemState> {
  SidebarItemBloc({
    required this.id,
    required String name,
    required String iconPath,
    required ISelectStrategy selectStrategy,
    required Color color,
    required bool isLocked,
  }) : super(
          SidebarItemState(
            id,
            name,
            iconPath,
            selectStrategy,
            color,
            isLocked,
          ),
        );

  final FeatureId id;
}

class SidebarItemState with EquatableMixin {
  SidebarItemState(
    this.id,
    this.title,
    this.iconPath,
    this.selectStrategy,
    this.color,
    this.isLocked,
  );

  final FeatureId id;
  final String title;
  final String iconPath;
  final ISelectStrategy selectStrategy;
  final Color color;
  final bool isLocked;

  @override
  List<Object?> get props => [
        title,
        iconPath,
        selectStrategy,
        color,
      ];
}

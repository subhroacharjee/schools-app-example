import 'package:equatable/equatable.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_bloc.dart';

class SidebarState with EquatableMixin {
  SidebarState({
    required this.items,
    required FeatureId selectedFeatureId,
  }) : _selectedFeatureId = selectedFeatureId;

  final List<SidebarItemBloc> items;
  final FeatureId? _selectedFeatureId;
  FeatureId get selectedFeatureId => _selectedFeatureId!;

  @override
  List<Object?> get props => [items, _selectedFeatureId];
}

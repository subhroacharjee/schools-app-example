import 'package:components/components.dart';
import 'package:core_flutter/constants.dart';
import 'package:core_flutter/presentation/screens/settings_screen/settings_section.dart';
import 'package:core_flutter/presentation/widgets/loading_shimmer.dart';
import 'package:core_flutter/presentation/widgets/sliver_grid_delegate_with_fixed_height_and_cross_axis_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/class_info_bloc.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/class_info_state.dart';
import 'package:schools_app/src/presentation/utils/build_context_extensions.dart';
import 'package:schools_app/src/presentation/widgets/class_settings/year_card_item.dart';

import '../../blocs/class_settings/danger_zone_bloc.dart';

class ClassInfoSection extends SettingsSection<ClassInfoBloc, ClassInfoState> {
  const ClassInfoSection({
    required this.classId,
    required this.onYearUpdated,
    super.key,
  }) : super(
          saveButtonAlignment: Alignment.centerLeft,
          title: 'Basic Settings',
        );

  final String classId;
  final VoidCallback onYearUpdated;

  @override
  Widget buildContent(BuildContext context, ClassInfoState state) {
    final bloc = getBloc(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TTextFormField(
          validator: bloc.validateClassName,
          initialValue: state.oldClassName,
          onChanged: bloc.onClassNameChanged,
          title: 'Class name',
          hintText: 'Math Class 1',
        ),
        formSpacing,
        const TText(
          'Year Level',
          style: TTextStyle.mediumM(),
        ),
        const SizedBox(height: 10),
        GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedHeightAndCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            height: 50,
          ),
          children: [
            for (final y in state.yearsMap.entries)
              YearCardCell(
                yearId: y.key,
                title: y.value,
                onTap: bloc.onYearIdChanged,
                isSelected: (state.yearId ?? state.oldYearId) == y.key,
              ),
          ],
        ),
      ],
    );
  }

  @override
  Widget loadingBuilder(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LoadingShimmer(
          loading: true,
          child: SizedBox(
            height: 50,
            width: double.infinity,
          ),
        ),
        formSpacing,
        const SizedBox(height: 20),
        GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedHeightAndCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            height: 50,
          ),
          children: [
            for (int i = 0; i < 8; i++)
              const LoadingShimmer(
                loading: true,
                child: SizedBox(
                  height: 50,
                ),
              ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: 80,
          height: 42,
          decoration: const ShapeDecoration(shape: StadiumBorder()),
          child: const LoadingShimmer(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            loading: true,
            child: null,
          ),
        ),
      ],
    );
  }

  @override
  ClassInfoBloc createBloc(BuildContext context) => ClassInfoBloc(
        classId: classId,
        onYearUpdated: onYearUpdated,
      );

  @override
  void onSaved(BuildContext context) {
    context
      ..read<DangerZoneBloc>().refresh()
      ..teacherNode.refreshClass(classId);
  }
}

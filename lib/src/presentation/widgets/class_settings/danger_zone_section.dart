import 'package:components/components.dart';
import 'package:core_flutter/constants.dart';
import 'package:core_flutter/presentation/screens/settings_screen/settings_section.dart';
import 'package:core_flutter/presentation/widgets/loading_shimmer.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/danger_zone_bloc.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/danger_zone_state.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/utils/build_context_extensions.dart';
import 'package:schools_app/src/presentation/widgets/popups/delete_class_popup.dart';

class DangerZoneSection extends SettingsSection<DangerZoneBloc, DangerZoneState> {
  const DangerZoneSection({required this.classId, required this.bloc, super.key})
      : super(
          title: '',
          showTitle: false,
          showSaveButton: false,
        );

  final String classId;
  final DangerZoneBloc bloc;

  @override
  Widget buildContent(BuildContext context, DangerZoneState state) {
    final bloc = getBloc(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TText(
          'Danger Zone ⚠️',
          style: TTextStyle.boldM(color: TColors.danger.shade500),
        ),
        formSpacing,
        TButton(
          style: TButtonStyle.primary(buttonUseCase: ButtonUseCase.danger),
          onPressed: () async {
            final deleted = await showPopup(
                  context: context,
                  child: BlocProvider.value(
                    value: bloc,
                    child: DeleteClassPopup(className: state.className),
                  ),
                ) ??
                false;
            if (deleted) {
              // ignore: use_build_context_synchronously
              context
                ..teacherNode.resolve()
                ..go(Routes.loading.route);
            }
          },
          child: const Text('Delete Class'),
        ),
      ],
    );
  }

  @override
  Widget loadingBuilder(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        formSpacing,
        Container(
          width: 120,
          height: 42,
          decoration: const ShapeDecoration(shape: StadiumBorder()),
          child: const LoadingShimmer(
            loading: true,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: null,
          ),
        ),
      ],
    );
  }

  @override
  DangerZoneBloc createBloc(BuildContext context) => bloc;
}

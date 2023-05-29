import 'package:components/components.dart';
import 'package:core/extensions/async_snapshot.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pre_signup/pre_signup.dart';
import 'package:schools_app/src/presentation/blocs/add_class_bloc.dart';
import 'package:schools_app/src/presentation/blocs/add_class_state.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/utils/build_context_extensions.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';
import 'package:schools_app/src/presentation/utils/range_formatter.dart';

enum AddClassPopupAction {
  back,
  added,
}

class AddClassPopup extends StatefulWidget {
  const AddClassPopup({
    this.title = 'Add Class',
    this.isDismissible = true,
    this.onClassAdded,
    this.onBack,
    this.showBackButton = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool isDismissible;
  final Function(AddClassBloc)? onBack;
  final bool showBackButton;
  final VoidCallback? onClassAdded;

  @override
  State<AddClassPopup> createState() => _AddClassPopupState();
}

class _AddClassPopupState extends State<AddClassPopup> {
  late final AddClassBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = AddClassBloc(onClassAdded: (id) {
      (context.stateMachine.node as TeacherLayoutNode).addClass(id);
      Navigator.of(context).pop(AddClassPopupAction.added);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopupLayout(
      padding: EdgeInsets.zero,
      closeButtonSize: 18,
      closeButtonContainerSize: 24,
      maxWidth: 485,
      shouldAbsorb: false,
      shouldPop: widget.isDismissible,
      showCloseButton: widget.isDismissible,
      builder: (context, isLoading, popup) =>
          BlocBuilder<AddClassBloc, AsyncSnapshot<AddClassState>>(
        bloc: _bloc,
        builder: (context, snap) {
          return snap.when(
            data: (state) {
              return Container(
                decoration: BoxDecoration(
                  color: TColors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: TColors.black.withOpacity(0.04),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        widget.showBackButton
                            ? Padding(
                                padding: const EdgeInsets.only(right: 14),
                                child: InkWell(
                                  onTap: () async {
                                    if (mounted) {
                                      Navigator.pop(context, AddClassPopupAction.back);
                                    }
                                  },
                                  child: SvgPicture.asset(
                                    'packages/schools_app/assets/back_arrow.svg',
                                  ),
                                ),
                              )
                            : Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: studentNameIcon.withOpacity(0.12),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  'packages/schools_app/assets/add_class_icon.svg',
                                  width: 16,
                                ),
                              ),
                        const SizedBox(width: 9),
                        TText(
                          widget.title,
                          style: const TTextStyle.headline5(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const TText(
                      'Year Level',
                      style: TTextStyle.mediumS(),
                    ),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 7,
                      runSpacing: 7,
                      children: state.yearsMap.entries.map(
                        (e) {
                          final id = e.key;
                          return YearLevelBox(
                            id: id,
                            title: e.value,
                            isSelected: state.yearId == id,
                            onSelect: _bloc.selectYear,
                          );
                        },
                      ).toList(),
                    ),
                    const SizedBox(height: 40),
                    TTextFormField(
                      title: 'Class Name',
                      hintText: 'Enter class name',
                      onChanged: _bloc.onNameChanged,
                      inputFormatters: [
                        RangeFormatter(maxLength: 20),
                      ],
                      onFieldSubmitted: (_) async => _addClass(popup),
                    ),
                    const SizedBox(height: 24),
                    TButton(
                      onPressed: (state.name ?? '').isNotEmpty && state.yearId != null
                          ? () async => _addClass(popup)
                          : null,
                      style: TButtonStyle.primary(
                        size: TButtonSize.large,
                      ),
                      loading: isLoading,
                      child: Container(
                        alignment: Alignment.center,
                        child: const TText(
                          'Add Class',
                          style: TTextStyle.buttonM(),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            loading: () => const SizedBox(
              height: 175,
              width: 480,
              child: DefaultCircularProgressIndicator(color: TColors.primary),
            ),
            err: (_, __) => empty,
          );
        },
      ),
    );
  }

  Future<void> _addClass(PopupLayoutData popup) async =>
      popup.execute(() async => _bloc.addClass(), false, false);
}

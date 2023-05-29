import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/danger_zone_bloc.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';

class DeleteClassPopup extends StatefulWidget {
  const DeleteClassPopup({
    required this.className,
    Key? key,
  }) : super(key: key);

  final String className;

  @override
  State<DeleteClassPopup> createState() => _DeleteClassPopupState();
}

class _DeleteClassPopupState extends State<DeleteClassPopup> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Use TModal
    return PopupLayout(
      maxWidth: 420,
      padding: EdgeInsets.zero,
      builder: (_, isLoading, popup) => Container(
        width: 420,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: TColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: deleteDialogBg,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Confirm Class Deletion',
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: deleteDialogRedText,
                            fontSize: 21,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Deleting this class will remove it from the class list and disconnect all students. Student data will still be available.',
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                      color: deleteDialogRedText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 12),
                  const Text(
                    'Type the class name below to confirm deletion:',
                    style: TTextStyle.mediumS(),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        enabledBorder: textFieldBorder,
                        focusedBorder: textFieldFocusedBorder,
                        border: textFieldBorder,
                        hintText: widget.className,
                      ),
                      onSubmitted: (v) {
                        if (widget.className == v) {
                          _deleteClass(popup);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TButton(
                        style: TButtonStyle.secondary(),
                        onPressed: Navigator.of(context).pop,
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 15),
                      ValueListenableBuilder<TextEditingValue>(
                        valueListenable: _controller,
                        builder: (context, value, _) => TButton(
                          loading: isLoading,
                          style: TButtonStyle.primary(
                            buttonUseCase: ButtonUseCase.danger,
                          ),
                          onPressed:
                              widget.className == value.text ? () => _deleteClass(popup) : null,
                          child: const Text('Delete Class'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _deleteClass(PopupLayoutData popup) async {
    await popup.execute(
      () async => BlocProvider.of<DangerZoneBloc>(context).deleteClass(),
      false,
      false,
    );
    if (mounted) {
      Navigator.pop(context, true);
    }
  }
}

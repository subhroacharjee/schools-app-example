import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:flutter/material.dart';

class ActionAlertPopup extends StatelessWidget {
  const ActionAlertPopup({
    required this.title,
    required this.actionWarning,
    required this.actionText,
    required this.actionCallback,
    this.actionButtonUseCase = ButtonUseCase.danger,
    super.key,
  });

  final String title;
  final String actionWarning;
  final String actionText;
  final ButtonUseCase actionButtonUseCase;

  final Future<void> Function() actionCallback;

  @override
  Widget build(BuildContext context) {
    return PopupLayout(
      maxWidth: 480,
      closeButtonSize: 18,
      closeButtonContainerSize: 24,
      fittedBox: true,
      padding: EdgeInsets.zero,
      builder: (context, isLoading, popup) => Container(
        width: 480,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: TColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TText(
                      title,
                      style: const TTextStyle.headline5(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TText(
                actionWarning,
                style: TTextStyle.mediumS(
                  color: TColors.black.shade600,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Divider(),
            _BottomActionButtons(
              actionText: actionText,
              actionCallback: actionCallback,
              actionButtonUseCase: actionButtonUseCase,
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomActionButtons extends StatefulWidget {
  const _BottomActionButtons({
    required this.actionText,
    required this.actionCallback,
    required this.actionButtonUseCase,
    Key? key,
  }) : super(key: key);

  final String actionText;
  final Future<void> Function() actionCallback;
  final ButtonUseCase actionButtonUseCase;

  @override
  State<_BottomActionButtons> createState() => _BottomActionButtonsState();
}

class _BottomActionButtonsState extends State<_BottomActionButtons> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TButton(
                onPressed: () => Navigator.of(context).pop(),
                style: TButtonStyle.secondary(),
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 15),
              TButton(
                loading: _isLoading,
                onPressed: () async {
                  await PopupLayout.of(context).execute(() async {
                    setState(() => _isLoading = true);
                    await widget.actionCallback();
                  });
                  if (mounted) {
                    Navigator.pop(context, true);
                  }
                },
                style: TButtonStyle.primary(buttonUseCase: widget.actionButtonUseCase),
                child: Text(widget.actionText),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

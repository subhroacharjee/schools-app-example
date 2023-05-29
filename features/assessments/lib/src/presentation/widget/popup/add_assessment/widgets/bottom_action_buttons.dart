part of '../add_assessment_popup.dart';

class _BottomActionButtons extends StatelessWidget {
  const _BottomActionButtons({
    required this.onSubmit,
    required this.isEdit,
    required this.loading,
    required this.formHandler,
    Key? key,
  }) : super(key: key);

  final VoidCallback onSubmit;
  final bool isEdit;
  final bool loading;
  final AddAssessmentFormHandler formHandler;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: formHandler.ctaButtonEnabledNotifier,
        builder: (context, enabled, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TButton(
                      onPressed: Navigator.of(context).pop,
                      style: TButtonStyle.secondary(),
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(width: 15),
                    TButton(
                      loading: loading,
                      onPressed: enabled ? onSubmit : null,
                      style: TButtonStyle.primary(),
                      child: Text(isEdit ? 'Save Changes' : 'Create Assessment'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        });
  }
}

part of '../add_assessment_popup.dart';

class SelectorFormField extends FormField {
  SelectorFormField({
    required String title,
    required Widget child,
    bool Function()? validator,
    VoidCallback? onTap,
    FormFieldSetter? onSaved,
    Key? key,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: (_) {
            if (validator != null) {
              return validator() ? null : 'Invalid';
            }

            return null;
          },
          builder: (state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: TText(
                    title,
                    style: const TTextStyle.regularXS(),
                  ),
                ),
                const SizedBox(height: 4),
                Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                            color: state.hasError ? TColors.danger : TColors.black.shade200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                        child: child,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
}

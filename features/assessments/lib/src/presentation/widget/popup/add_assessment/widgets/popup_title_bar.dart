part of '../add_assessment_popup.dart';

class PopupTitleBar extends StatelessWidget {
  const PopupTitleBar({
    required this.isEdit,
    Key? key,
  }) : super(key: key);

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: TColors.white,
      ),
      alignment: Alignment.centerLeft,
      child: TText(
        '${isEdit ? 'Edit' : 'Create'} Assessment',
        style: const TTextStyle.headline5(),
      ),
    );
  }
}

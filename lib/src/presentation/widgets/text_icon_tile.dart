import 'package:components/components.dart';
import 'package:flutter/material.dart';

class TextIconTile extends StatelessWidget {
  const TextIconTile({
    required this.text,
    required this.leadingIcon,
    this.trailingIcon,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  final Widget leadingIcon;
  final Widget? trailingIcon;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leadingIcon,
        const SizedBox(width: 10),
        Text(
          text,
          style: textStyle ?? const TTextStyle.boldS(),
        ),
        Expanded(
          child: Container(),
        ),
        trailingIcon ?? empty,
      ],
    );
  }
}

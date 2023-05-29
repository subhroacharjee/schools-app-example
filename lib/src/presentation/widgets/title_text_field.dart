import 'package:components/components.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    required this.title,
    required this.hintText,
    this.obscureText = false,
    this.onChanged,
    this.controller,
    Key? key,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final ValueChanged? onChanged;
  final String title;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyMedium?.copyWith(
            color: tuteroBlack,
            fontSize: 13,
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          height: 50,
          child: TextField(
            obscureText: obscureText,
            controller: controller,
            style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              border: textFieldBorder,
              enabledBorder: textFieldBorder,
              focusedBorder: textFieldFocusedBorder,
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}

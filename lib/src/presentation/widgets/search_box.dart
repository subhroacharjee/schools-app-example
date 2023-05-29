import 'package:components/components.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({required this.onChanged, Key? key}) : super(key: key);

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 17,
      style: context.textTheme.bodyMedium?.copyWith(
        color: tuteroBlack.withOpacity(0.7),
        fontSize: 13,
        fontWeight: medium,
      ),
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: context.textTheme.bodyMedium?.copyWith(
          color: tuteroBlack.withOpacity(0.48),
          fontSize: 13,
          fontWeight: medium,
        ),
        contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        prefixIcon: const Icon(
          Icons.search,
          size: 15,
          color: tuteroBlack,
        ),
        enabledBorder: textFieldBorder.copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        focusedBorder: textFieldFocusedBorder.copyWith(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
      ),
      onChanged: onChanged,
    );
  }
}

import 'dart:html';

import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn/learn.dart' hide AvatarMenu;
import 'package:schools_app/src/presentation/widgets/avatar_menu.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          CircleBackButton(
            onPressed: (context) => context.canPop() ? context.pop() : window.history.back(),
          ),
          const SizedBox(width: 20),
          TText(
            title,
            style: const TTextStyle.headline4(),
          ),
          const Spacer(),
          const AvatarMenu(),
        ],
      ),
    );
  }
}

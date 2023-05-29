import 'package:components/components.dart';
import 'package:flutter/material.dart';

class DialogWrapper extends StatelessWidget {
  const DialogWrapper({
    required this.width,
    required this.title,
    required this.child,
    this.showCloseButton = true,
    this.color = white,
    this.radius = 10,
    this.height,
    Key? key,
  }) : super(key: key);

  final double width;
  final double? height;
  final double radius;
  final String title;
  final Color color;
  final Widget child;
  final bool showCloseButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: height == null ? MainAxisSize.min : MainAxisSize.max,
        children: [
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TText(
                  title,
                  style: const TTextStyle.headline5(),
                ),
              ),
              const SizedBox(width: 20),
              if (showCloseButton)
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.clear_rounded),
                ),
            ],
          ),
          child,
        ],
      ),
    );
  }
}

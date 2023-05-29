import 'package:components/components.dart';
import 'package:flutter/material.dart';

// Add minor animation to the progress bar
class LinearProgressBar extends StatelessWidget {
  const LinearProgressBar({
    required this.value,
    this.height = 8,
    this.color,
    this.backgroundColor,
    super.key,
  });

  /// The value represents the percentage of the progress bar that is filled (from 0 to 1).
  final double value;
  final Color? color;
  final Color? backgroundColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    final remaining = ((1 - value) * 1000).toInt();
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: backgroundColor ?? TColors.primary.shade200,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.elliptical(6, 6)),
        child: Row(
          children: [
            Expanded(
              flex: (value * 1000).toInt(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.elliptical(6, 6)),
                  color: color ?? TColors.primary[500],
                ),
              ),
            ),
            if (remaining != 0) ...[Spacer(flex: remaining)],
          ],
        ),
      ),
    );
  }
}

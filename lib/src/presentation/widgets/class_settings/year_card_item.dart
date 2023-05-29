import 'package:components/components.dart' show TColors, TText, TTextStyle;

import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class YearCardCell extends StatefulWidget {
  const YearCardCell({
    required this.yearId,
    required this.title,
    required this.onTap,
    required this.isSelected,
    super.key,
  });

  final String yearId;
  final String title;
  final void Function(String) onTap;
  final bool isSelected;

  @override
  State<YearCardCell> createState() => _YearCardCellState();
}

class _YearCardCellState extends State<YearCardCell> {
  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(16));
    return InkWell(
      borderRadius: borderRadius,
      onTap: () => widget.onTap(widget.yearId),
      child: SizedBox(
        height: 50,
        child: AnimatedContainer(
          duration: 0.3.seconds,
          curve: Curves.easeInOutCubic,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: TColors.white,
            borderRadius: borderRadius,
          ),
          foregroundDecoration: BoxDecoration(
            borderRadius: borderRadius,
            border: widget.isSelected
                ? Border.all(
                    color: TColors.primary,
                    width: 2,
                  )
                : Border.all(
                    color: TColors.black.withOpacity(0.04),
                    width: 2,
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: TText(
              widget.title,
              textAlign: TextAlign.center,
              style: TTextStyle.boldM(
                color: widget.isSelected ? TColors.primary.shade500 : TColors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

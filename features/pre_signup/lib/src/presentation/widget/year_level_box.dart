import 'package:components/components.dart';
import 'package:flutter/material.dart';

class YearLevelBox extends StatelessWidget {
  const YearLevelBox({
    required this.id,
    required this.title,
    required this.isSelected,
    required this.onSelect,
    this.isEnabled = true,
    this.width = 100,
    this.height = 50,
    this.showShadow = false,
    this.borderRadius = 16,
    this.borderWidth = 2,
    Key? key,
  }) : super(key: key);

  const YearLevelBox.mini({
    required this.id,
    required this.title,
    required this.isSelected,
    required this.onSelect,
    this.isEnabled = true,
    this.width = 56,
    this.height = 40,
    this.showShadow = true,
    this.borderRadius = 12,
    this.borderWidth = 0.5,
    Key? key,
  }) : super(key: key);

  final String id;
  final String title;
  final bool isSelected;
  final ValueChanged<String> onSelect;
  final double width;
  final double height;

  /// Cannot be disabled if it is selected
  final bool isEnabled;
  final bool showShadow;
  final double borderRadius;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: isEnabled
            ? () {
                onSelect(id);
              }
            : null,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        child: AnimatedContainer(
          width: width,
          height: height,
          duration: Duration(milliseconds: isEnabled ? 300 : 0),
          decoration: BoxDecoration(
            color: isSelected
                ? TColors.primary
                : isEnabled
                    ? TColors.white
                    : TColors.black.shade100,
            border: !isEnabled || isSelected
                ? null
                : Border.all(
                    width: borderWidth,
                    color: TColors.black.shade100,
                  ),
            boxShadow: !showShadow || !isEnabled || isSelected
                ? null
                : [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          alignment: Alignment.center,
          child: TText(
            title,
            style: TTextStyle.mediumM(
              color: isSelected ? TColors.white : TColors.black,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';

class MaterialInkWell extends StatelessWidget {
  const MaterialInkWell({
    required this.child,
    this.hoverColor = hoverInk,
    this.splashColor = splashInk,
    this.borderRadius,
    this.onHover,
    this.onTap,
    this.delay = true,
    Key? key,
  }) : super(key: key);

  final GestureTapCallback? onTap;
  final ValueChanged<bool>? onHover;
  final Color hoverColor;
  final Color splashColor;
  final BorderRadius? borderRadius;
  final Widget child;

  /// Wait for a while till splash animation is done (200ms)
  final bool delay;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        hoverColor: hoverColor,
        splashColor: splashColor,
        borderRadius: borderRadius,
        onHover: onHover,
        splashFactory: InkRipple.splashFactory,
        onTap: onTap != null && delay
            ? () async {
                await Future.delayed(150.milliseconds);
                onTap!();
              }
            : onTap,
        child: child,
      ),
    );
  }
}

import 'package:assessments/assessments.dart';
import 'package:components/components.dart';
import 'package:core/di.dart';
import 'package:flutter/material.dart';

class MustHaveStudentsTooltip extends StatelessWidget {
  const MustHaveStudentsTooltip({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: gi<AssessmentsConfigurer>().hasStudentsNotifier,
      builder: (_, value, __) => TTooltip(
        enabled: !value,
        offset: const Offset(0, -10),
        childAlignment: Alignment.topCenter,
        tooltipAlignment: Alignment.bottomCenter,
        tooltip: const TText(
          'Class must have at least one student',
          style: TTextStyle.regularXS(color: TColors.white),
        ),
        child: child,
      ),
    );
  }
}

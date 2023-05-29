import 'package:flutter/material.dart';
import 'package:schools_app/src/presentation/widgets/class_id_builder.dart';
import 'package:schools_app/src/presentation/widgets/platform_id_builder.dart';

class MathsPlatformRebuilder extends StatelessWidget {
  const MathsPlatformRebuilder({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PlatformIdBuilder(
      builder: (context, platformId) {
        return ClassIdBuilder(
          builder: (_, classId) => Container(
            key: ValueKey('$platformId$classId'),
            child: child,
          ),
        );
      },
    );
  }
}

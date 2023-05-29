import 'package:components/components.dart';
import 'package:flutter/material.dart';

class StudentItemAvatar extends StatelessWidget {
  const StudentItemAvatar({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    final color = name.toDistinctColor();
    return CircleAvatar(
      backgroundColor: color.shade200,
      radius: 12,
      child: TText(
        name.isNotEmpty ? name[0] : '?',
        style: TTextStyle.boldS(
          color: color,
        ),
      ),
    );
  }
}

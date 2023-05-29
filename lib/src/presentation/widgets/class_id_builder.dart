import 'package:flutter/material.dart';
import 'package:schools_app/schools_app.dart';

class ClassIdBuilder extends StatelessWidget with ClassInfoCacheMixin {
  const ClassIdBuilder({
    required this.builder,
    super.key,
  });

  final Function(BuildContext, String?) builder;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: classInfoCache.classIdStream,
      builder: (context, classId) => builder(context, classId.data),
    );
  }
}

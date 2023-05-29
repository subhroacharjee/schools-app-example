import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:flutter/material.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schools_app/schools_app.dart';

class PlatformIdBuilder extends StatelessWidget with ClassInfoCacheMixin {
  const PlatformIdBuilder({
    required this.builder,
    super.key,
  });

  final Function(BuildContext, String?) builder;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Option<String>>(
      stream: platformUserId.stream,
      builder: (context, option) => builder(
        context,
        (option.data?.isSome() ?? false) ? option.data!.unwrap() : null,
      ),
    );
  }
}

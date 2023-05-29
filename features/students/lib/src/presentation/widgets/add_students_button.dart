// ignore_for_file: implementation_imports

import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:schools_app/src/presentation/widgets/popups/share_class_code_popup.dart';

class AddStudentsButton extends StatelessWidget {
  const AddStudentsButton({
    super.key,
    required this.classCode,
  });

  final String classCode;
  @override
  Widget build(BuildContext context) {
    return TButton(
      onPressed: () => classCode.isEmpty
          ? null
          : showPopup(
              child: ShareClassPopup(code: classCode),
              context: context,
            ),
      style: TButtonStyle.primary(size: TButtonSize.small),
      child: const TText(
        '+ Add Students',
        style: TTextStyle.buttonS(),
      ),
    );
  }
}

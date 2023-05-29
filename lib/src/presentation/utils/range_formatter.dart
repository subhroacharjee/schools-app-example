import 'package:flutter/services.dart';

class RangeFormatter extends TextInputFormatter {
  RangeFormatter({required this.maxLength});

  final int maxLength;
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > maxLength) {
      return oldValue;
    }
    return newValue;
  }
}

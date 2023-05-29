import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<DateTime?> showDatePickerPopup({
  required BuildContext context,
  ValueChanged<DateTime>? onDateChanged,
  DateTime? initialDate,
}) {
  return showPopup<DateTime?>(
    context: context,
    opacity: 0.23,
    blurRadius: 0.8,
    child: DatePickerPopup(
      initialDate: initialDate ?? DateTime.now(),
      onDateChanged: onDateChanged,
    ),
  );
}

class DatePickerPopup extends StatefulWidget {
  const DatePickerPopup({
    required this.initialDate,
    this.onDateChanged,
    super.key,
  });

  final ValueChanged<DateTime>? onDateChanged;
  final DateTime initialDate;

  @override
  State<DatePickerPopup> createState() => _DatePickerPopupState();
}

class _DatePickerPopupState extends State<DatePickerPopup> {
  late DateTime _selectedDate = widget.initialDate;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return PopupLayout(
      padding: EdgeInsets.zero,
      closeButtonSize: 18,
      closeButtonContainerSize: 24,
      maxWidth: 450,
      builder: (_, __, popup) => Theme(
        data: Theme.of(context).copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        child: Material(
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 26),
            decoration: BoxDecoration(
              color: TColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20.5)),
              border: Border.all(
                color: TColors.black.shade300,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 10),
                  child: TText(
                    'Select Date',
                    style: TTextStyle.boldM(
                      color: TColors.black.shade800,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                CalendarDatePicker(
                  initialDate: _selectedDate,
                  firstDate: now,
                  lastDate: now.add(const Duration(days: 365)),
                  onDateChanged: (date) {
                    _selectedDate = date;
                    widget.onDateChanged?.call(date);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TButton(
                      onPressed: () => Navigator.pop(context, null),
                      style: TButtonStyle.tertiary(),
                      child: TText(
                        'Cancel',
                        style: TTextStyle.mediumS(color: TColors.primary.shade500),
                      ),
                    ),
                    const SizedBox(width: 5),
                    TButton(
                      onPressed: () => Navigator.pop(context, _selectedDate),
                      style: TButtonStyle.tertiary(),
                      child: TText(
                        'Ok',
                        style: TTextStyle.mediumS(color: TColors.primary.shade500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

part of '../add_assessment_popup.dart';

class TimeSection extends StatefulWidget {
  const TimeSection({
    required this.formHandler,
    super.key,
  });

  final AddAssessmentFormHandler formHandler;

  @override
  State<TimeSection> createState() => _TimeSectionState();
}

class _TimeSectionState extends State<TimeSection> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.formHandler.dateAndTimeNotifier,
      builder: (context, _, child) {
        final duration = widget.formHandler.duration;

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: SelectorFormField(
                    title: 'Date',
                    onTap: onTapDate,
                    validator: widget.formHandler.isSelectedDateValid,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'packages/assessments/assets/calendar_icon.svg',
                        ),
                        const SizedBox(width: 10),
                        TText(
                          DateFormat('dd/MM/yyyy').format(widget.formHandler.selectedDate),
                          style: const TTextStyle.mediumS(),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: SelectorFormField(
                    title: 'Start Time',
                    onTap: onTapStartTime,
                    validator: widget.formHandler.isStartTimeValid,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TText(
                          DateFormat.jm().format(widget.formHandler.startDate),
                          style: const TTextStyle.mediumS(),
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          Images.dropdownArrow,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: SelectorFormField(
                    title: 'End Time',
                    onTap: onTapEndTime,
                    validator: widget.formHandler.isEndTimeValid,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TText(
                          DateFormat.jm().format(widget.formHandler.endDate),
                          style: const TTextStyle.mediumS(),
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          Images.dropdownArrow,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ValueListenableBuilder(
              valueListenable: widget.formHandler.ctaButtonEnabledNotifier,
              builder: (context, _, child) {
                final error = widget.formHandler.validationText();
                if (error == null) return empty;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: TText(
                    error,
                    style: const TTextStyle.mediumXS(
                      color: TColors.danger,
                    ),
                  ),
                );
              },
            ),
            Text.rich(
              TextSpan(
                text: 'Duration: ',
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: regular,
                  fontSize: 12,
                  color: TColors.black.shade600,
                ),
                children: [
                  if (duration != null)
                    TextSpan(
                      text: prettyDuration(
                        duration,
                        spacer: ' ',
                        delimiter: ' & ',
                      ),
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: bold,
                        fontSize: 12,
                        color: TColors.black.shade600,
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> onTapDate() async {
    final date = await showDatePickerPopup(
      context: context,
      initialDate: widget.formHandler.selectedDate,
    );

    if (date != null) {
      widget.formHandler.selectedDate = date;
      widget.formHandler.toggleAddButton();
    }
  }

  Future<void> onTapStartTime() async {
    final time = await showTimePickerPopup(
      initialTime: widget.formHandler.startTime,
      context: context,
    );

    if (time != null) {
      widget.formHandler.startTime = time;
      widget.formHandler.toggleAddButton();
    }
  }

  Future<void> onTapEndTime() async {
    final time = await showTimePickerPopup(
      initialTime: widget.formHandler.endTime,
      context: context,
    );

    if (time != null) {
      widget.formHandler.endTime = time;
      widget.formHandler.toggleAddButton();
    }
  }
}

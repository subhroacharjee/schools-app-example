import 'package:components/components.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateAndTimeBox extends StatelessWidget {
  const DateAndTimeBox({
    required this.duration,
    required this.date,
    this.removeTitle = false,
    Key? key,
  }) : super(key: key);

  final Duration duration;
  final DateTime date;
  final bool removeTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: tuteroBlack06,
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TText(
            prettyDuration(
              duration,
              abbreviated: true,
              spacer: ' ',
              delimiter: ' ',
            ),
            style: TTextStyle.regularXS(
              color: TColors.black.shade500,
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 1,
            height: 12,
            color: TColors.black[200],
          ),
          const SizedBox(width: 12),
          TText(
            '${removeTitle ? '' : 'Date: '}${DateFormat.yMMMMd().format(date)}',
            style: TTextStyle.regularXS(
              color: TColors.black.shade500,
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 1,
            height: 12,
            color: TColors.black[200],
          ),
          const SizedBox(width: 12),
          TText(
            '${removeTitle ? '' : 'Time: '}${DateFormat.jm().format(date)}',
            style: TTextStyle.regularXS(
              color: TColors.black.shade500,
            ),
          ),
        ],
      ),
    );
  }
}

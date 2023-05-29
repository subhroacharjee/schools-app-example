import 'dart:async';

import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StartingAssessmentPopup extends StatefulWidget {
  const StartingAssessmentPopup({
    required this.isPaused,
    required this.testId,
    super.key,
  });

  final bool isPaused;
  final String testId;

  @override
  State<StartingAssessmentPopup> createState() => _StartingAssessmentPopupState();
}

class _StartingAssessmentPopupState extends State<StartingAssessmentPopup> {
  int _secondsLeft = 5;
  late final Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        _secondsLeft--;
        if (_secondsLeft <= 0) {
          Navigator.pop(context);
        }
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            widget.isPaused
                ? 'packages/assessments/assets/pause_emoji.png'
                : 'packages/assessments/assets/rocket.png',
            filterQuality: FilterQuality.medium,
            height: 70,
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 395,
            child: Text(
              widget.isPaused ? 'The assessment is paused!' : 'The assessment is about to start!',
              textAlign: TextAlign.center,
              style: const TTextStyle.headline3(
                color: TColors.white,
              ),
            ),
          ),
          widget.isPaused ? empty : const SizedBox(height: 40),
          widget.isPaused
              ? empty
              : Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
                  decoration: BoxDecoration(
                    color: TColors.white.withOpacity(0.06),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  //what should the default scheme be here?
                  child: Text(
                    'Starting in $_secondsLeft ${Intl.plural(_secondsLeft, one: 'second', other: 'seconds')}',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: TColors.white,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

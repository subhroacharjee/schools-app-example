import 'package:assessments/src/presentation/widget/popup/action_alert_popup.dart';
import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';

Future<bool?> showRemoveAssessmentPopup({
  required BuildContext context,
  required Future<void> Function() actionCallback,
}) =>
    showPopup<bool?>(
      context: context,
      opacity: 0.5,
      child: ActionAlertPopup(
        title: 'Remove Assessment',
        actionWarning: 'Are you certain you wish to remove this assessment?',
        actionText: 'Remove Assessment',
        actionCallback: actionCallback,
      ),
    );

void showEndAssessmentPopup({
  required BuildContext context,
  required Future<void> Function() actionCallback,
}) {
  showPopup(
    context: context,
    opacity: 0.5,
    child: ActionAlertPopup(
      title: 'End Assessment',
      actionWarning: 'Are you sure you want to exit the assessment? '
          '\n\nTerminating the assessment early will yield less accurate data.',
      actionText: 'End Assessment',
      actionCallback: actionCallback,
    ),
  );
}

Future<bool?> showStartAssessmentPopup({
  required BuildContext context,
  required Future<void> Function() actionCallback,
}) =>
    showPopup<bool?>(
      context: context,
      opacity: 0.5,
      child: ActionAlertPopup(
        title: 'Start Assessment',
        actionWarning: 'Are you sure you want to start this assessment?',
        actionText: 'Start',
        actionCallback: actionCallback,
        actionButtonUseCase: ButtonUseCase.success,
      ),
    );

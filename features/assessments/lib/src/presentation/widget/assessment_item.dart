import 'dart:async';
import 'dart:math';

import 'package:assessments/src/domain/entity/assessment_status.dart';
import 'package:assessments/src/presentation/bloc/active_assessment_bloc.dart';
import 'package:assessments/src/presentation/bloc/assessment_item_bloc.dart';
import 'package:assessments/src/presentation/bloc/assessment_list_bloc.dart';
import 'package:assessments/src/presentation/widget/assessment_action_menu.dart';
import 'package:assessments/src/presentation/widget/date_time_box.dart';
import 'package:assessments/src/presentation/widget/linear_progress_bar.dart';
import 'package:assessments/src/presentation/widget/popup/add_assessment/add_assessment_popup.dart';
import 'package:assessments/src/presentation/widget/popup/assessment_action_popup.dart';
import 'package:assessments/src/presentation/widget/student_list_overlay.dart';
import 'package:components/components.dart';
import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../domain/entity/assessment.dart';
import '../assessments_configurer.dart';

class AssessmentItem extends StatefulWidget {
  const AssessmentItem({
    required this.assessment,
    required this.type,
    required this.startAssessmentCallback,
    super.key,
  });

  final AssessmentInfo assessment;
  final AssessmentType type;
  final VoidCallback startAssessmentCallback;

  @override
  State<AssessmentItem> createState() => _AssessmentItemState();
}

class _AssessmentItemState extends State<AssessmentItem> {
  late final _bloc = AssessmentItemBloc(widget.assessment);
  late final assessmentId = widget.assessment.id;

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = widget.type == AssessmentType.upcoming ? 16.0 : 20.0;
    final borderColor = widget.type == AssessmentType.active
        ? widget.assessment.status == AssessmentStatus.paused
            ? TColors.warning.shade500
            : TColors.primary.shade300
        : TColors.black.shade50;

    final isPast = (widget.type == AssessmentType.past) ||
        widget.assessment.status ==
            AssessmentStatus.finished; // An active assessment might be in the past;
    final isCurrent = widget.type == AssessmentType.active && !isPast;
    final backgroundColor = isPast ? TColors.success.shade100 : TColors.white;

    return BlocProvider<ActiveAssessmentBloc>(
      create: (context) => ActiveAssessmentBloc(
        assessmentId: widget.assessment.id,
        onAssessmentComplete: (assessmentSummary) =>
            gi<AssessmentsConfigurer>().onAssessmentComplete(
          context,
          assessmentSummary,
        ),
      ),
      child: BlocBuilder<AssessmentItemBloc, AsyncSnapshot<AssessmentItemState>>(
        bloc: _bloc,
        builder: (context, snap) {
          return snap.when(
            data: (data) {
              final studentsCount = data.studentsCount;
              return Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(color: borderColor),
                  boxShadow: [
                    BoxShadow(
                      color: TColors.black.withOpacity(0.12),
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TText(
                                        widget.assessment.name,
                                        style: const TTextStyle.headline6(),
                                      ),
                                      const SizedBox(height: 4),
                                      TText(
                                        data.topicLabel,
                                        style: TTextStyle.mediumS(
                                          color: TColors.black.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    isCurrent || isPast
                                        ? const SizedBox(height: 40)
                                        : TButton(
                                            style: TButtonStyle.primary(
                                              size: TButtonSize.small,
                                            ),
                                            onPressed: () => showStartAssessmentPopup(
                                              context: context,
                                              actionCallback: () async => context
                                                  .read<AssessmentListBloc>()
                                                  .startAssessment(
                                                    widget.assessment.id,
                                                  )
                                                  .then(
                                                      (_) => widget.startAssessmentCallback.call()),
                                            ),
                                            child: const Padding(
                                              padding:
                                                  EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                              child: TText(
                                                'Start Assessment',
                                                style: TTextStyle.boldS(
                                                  color: TColors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                    const SizedBox(width: 16),
                                    if (!isPast)
                                      AssessmentActionMenu(
                                        status: widget.assessment.status,
                                        onPaused: (isPaused) {
                                          if (isPaused) {
                                            context
                                                .read<AssessmentListBloc>()
                                                .pauseAssessment(widget.assessment.id);
                                          } else {
                                            context
                                                .read<AssessmentListBloc>()
                                                .resumeAssessment(widget.assessment.id);
                                          }
                                        },
                                        hasStarted: isCurrent,
                                        onTapStop: () => showEndAssessmentPopup(
                                          context: context,
                                          actionCallback: () async {
                                            final summary = await context
                                                .read<AssessmentListBloc>()
                                                .finishAssessment(widget.assessment.id);
                                            // ignore: use_build_context_synchronously
                                            context.read<ActiveAssessmentBloc>()
                                              ..stopPolling()
                                              ..onAssessmentComplete(summary);
                                          },
                                        ),
                                        onTapEdit: () async {
                                          final r = await AddAssessmentPopup.show(
                                            context: context,
                                            assessment: widget.assessment,
                                          );
                                          if (r ?? false) {
                                            // ignore: use_build_context_synchronously
                                            context
                                                .read<AssessmentListBloc>()
                                                .refresh(emitLoading: false);
                                          }
                                        },
                                        onTapRemove: () => showRemoveAssessmentPopup(
                                          context: context,
                                          actionCallback: () async {
                                            final bloc = context.read<AssessmentListBloc>();
                                            await bloc.deleteAssessment(widget.assessment.id);
                                            bloc.refresh(emitLoading: false);
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 13),
                            isCurrent
                                ? Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: TColors.black.shade50,
                                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Row(
                                      children: [
                                        TText(
                                          'Students taking assessment: ${data.studentsJoinedCount}',
                                          style: const TTextStyle.mediumS(),
                                        ),
                                        const SizedBox(width: 5),
                                        StudentListOverlay(bloc: _bloc),
                                      ],
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      DateAndTimeBox(
                                        duration: widget.assessment.timeTaken ?? widget.assessment.duration,
                                        date: widget.assessment.startAt,
                                      ),
                                      isPast
                                          ? Container(
                                              padding: const EdgeInsets.symmetric(
                                                vertical: 5,
                                                horizontal: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: TColors.black.shade50,
                                                borderRadius:
                                                    const BorderRadius.all(Radius.circular(8)),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  TText(
                                                    '${data.studentsJoinedCount}/$studentsCount students participated',
                                                    style: const TTextStyle.mediumS(),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  StudentListOverlay(
                                                    bloc: _bloc,
                                                    iconColor: TColors.black,
                                                    tooltipAlignment: Alignment.centerRight,
                                                    childAlignment: Alignment.centerLeft,
                                                  ),
                                                ],
                                              ),
                                            )
                                          : TText(
                                              '${data.studentsJoinedCount}/$studentsCount students ready',
                                              style: TTextStyle.regularXS(
                                                color: TColors.black.shade500,
                                              ),
                                            ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                      if (isCurrent)
                        BlocListener<AssessmentListBloc, AsyncSnapshot<AssessmentListState>>(
                          listener: (_, s) => _bloc
                              .setExpectedDueAt(s.data!.getAssessment(assessmentId)!.expectedDueAt),
                          listenWhen: (p, c) =>
                              p.data?.getAssessment(assessmentId)?.status ==
                                  AssessmentStatus.paused &&
                              c.data?.getAssessment(assessmentId)?.status ==
                                  AssessmentStatus.started,
                          child: _CurrentAssessmentTimer(
                            key: ValueKey(data.expectedDueAt),
                            startAt: widget.assessment.startedAt!,
                            expectedDueAt: data.expectedDueAt,
                            status: widget.assessment.status,
                          ),
                        ),
                      if (isPast && data.timeSaved != null)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          color: TColors.success.shade600,
                          alignment: Alignment.centerLeft,
                          child: TText(
                            '🙌 This assessment saved you ${prettyDuration(data.timeSaved!)} of marking time. ',
                            style: TTextStyle.boldS(
                              color: TColors.white.shade800,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
            err: (_, __) => empty,
            loading: () => const DefaultCircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class _CurrentAssessmentTimer extends StatefulWidget {
  const _CurrentAssessmentTimer({
    required this.startAt,
    required this.expectedDueAt,
    required this.status,
    Key? key,
  }) : super(key: key);

  final DateTime startAt;
  final DateTime expectedDueAt;
  final AssessmentStatus status;

  @override
  State<_CurrentAssessmentTimer> createState() => _CurrentAssessmentTimerState();
}

class _CurrentAssessmentTimerState extends State<_CurrentAssessmentTimer>
    with SingleTickerProviderStateMixin {
  final numberFormat = NumberFormat('00');
  Timer? _timer;
  String _remainString = '';
  double _progress = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _update();
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        _update();
        if (DateTime.now().compareTo(widget.expectedDueAt) >= 0) {
          timer.cancel();
          context.read<ActiveAssessmentBloc>().startPolling();
        } else {
          if (widget.status == AssessmentStatus.started) {
            setState(() {});
          }
        }
      },
    );
  }

  void _update() {
    final duration = widget.expectedDueAt.difference(widget.startAt);
    final elapsed = DateTime.now().difference(widget.startAt);
    _progress = min(duration.inMilliseconds, elapsed.inMilliseconds) / duration.inMilliseconds;
    final remaining = duration - elapsed;
    _remainString = '';

    if (remaining.inHours > 0) {
      _remainString = '${remaining.inHours % 24}:';
    }
    if (remaining.inMinutes > 0) {
      _remainString += '${numberFormat.format(remaining.inMinutes % 60)}:';
    }

    final addSecond = _remainString.isEmpty;
    _remainString += numberFormat.format(remaining.inSeconds % 60);
    _remainString += addSecond ? 's' : '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: widget.status == AssessmentStatus.paused
          ? TColors.warning.shade50
          : TColors.primary.shade50,
      child: Row(
        children: [
          widget.status == AssessmentStatus.paused
              ? Container(
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                  decoration: BoxDecoration(
                    color: TColors.warning.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'packages/assessments/assets/pause_icon.svg',
                        color: TColors.warning.shade600,
                        width: 9,
                      ),
                      const SizedBox(width: 7),
                      TText(
                        'Paused',
                        style: TTextStyle.mediumXS(
                          color: TColors.warning.shade600,
                        ),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: LinearProgressBar(value: _progress),
                ),
          const SizedBox(width: 8),
          SizedBox(
            width: 105,
            child: TText(
              '$_remainString remaining',
              style: const TTextStyle.mediumXS(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    super.dispose();
  }
}

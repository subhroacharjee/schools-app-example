import 'package:assessments/src/presentation/bloc/assessment_item_bloc.dart';
import 'package:components/components.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentListOverlay extends StatelessWidget {
  const StudentListOverlay({
    required this.bloc,
    this.tooltipAlignment = Alignment.centerLeft,
    this.childAlignment = Alignment.topRight,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  final AssessmentItemBloc bloc;
  final Alignment tooltipAlignment;
  final Alignment childAlignment;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return TTooltip(
      tooltipAlignment: tooltipAlignment,
      childAlignment: childAlignment,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      tooltip: Container(
        width: 390,
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: TColors.black,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              blurRadius: 16,
              color: TColors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: BlocBuilder<AssessmentItemBloc, AsyncSnapshot<AssessmentItemState>>(
          bloc: bloc,
          builder: (context, snap) {
            return snap.whenData(
              data: (data) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '✅',
                            style: const TTextStyle.mediumXS().copyWith(
                              fontFamily: 'NotoColorEmoji',
                            ),
                          ),
                          const TextSpan(
                            text: '  Joined',
                            style: TTextStyle.mediumXS(
                              color: TColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 4,
                      runSpacing: 8,
                      children: [
                        for (final student in data.studentsJoined) _StudentChip(student: student),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Divider(
                      color: TColors.white.shade200,
                      height: 1,
                    ),
                    const SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '❌',
                            style: const TTextStyle.mediumXS().copyWith(
                              fontFamily: 'NotoColorEmoji',
                            ),
                          ),
                          const TextSpan(
                            text: '  Not Joined',
                            style: TTextStyle.mediumXS(
                              color: TColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 4,
                      runSpacing: 8,
                      children: [
                        for (final student in data.studentsNotJoined)
                          _StudentChip(
                            student: student,
                          ),
                      ],
                    ),
                  ],
                );
              },
              orElse: () => empty,
            );
          },
        ),
      ),
      child: _HighlightableIcon(
        iconColor: iconColor,
      ),
    );
  }
}

class _HighlightableIcon extends StatefulWidget {
  const _HighlightableIcon({this.iconColor});

  final Color? iconColor;
  @override
  State<_HighlightableIcon> createState() => __HighlightableIconState();
}

class __HighlightableIconState extends State<_HighlightableIcon> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (_) => setState(() => _isHovering = false),
      onEnter: (_) => setState(() => _isHovering = true),
      child: Icon(
        _isHovering ? Icons.info : Icons.info_outline,
        size: 16,
        color: widget.iconColor ?? TColors.primary.shade500,
      ),
    );
  }
}

class _StudentChip extends StatelessWidget {
  const _StudentChip({
    required this.student,
    Key? key,
  }) : super(key: key);

  final String student;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: TColors.white.withOpacity(0.16),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: TText(
        student,
        style: const TTextStyle.regularXS(color: TColors.white),
      ),
    );
  }
}

import 'dart:math';

import 'package:assessments/assessments.dart';
import 'package:assessments/src/domain/entity/assessment.dart';
import 'package:assessments/src/domain/entity/subtopic_info.dart';
import 'package:assessments/src/domain/entity/topic.dart';
import 'package:assessments/src/presentation/bloc/add_assessment_bloc.dart';
import 'package:assessments/src/presentation/widget/popup/add_assessment/add_assessment_form_handler.dart';
import 'package:assessments/src/presentation/widget/popup/date_picker_popup.dart';
import 'package:assessments/src/presentation/widget/popup/time_picker_popup.dart';
import 'package:components/components.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

part 'widgets/bottom_action_buttons.dart';
part 'widgets/popup_title_bar.dart';
part 'widgets/selector_form_field.dart';
part 'widgets/subtopic_section.dart';
part 'widgets/time_section.dart';
part 'widgets/topic_section.dart';

class AddAssessmentPopup extends StatefulWidget {
  const AddAssessmentPopup({
    this.assessment,
    super.key,
  });

  final AssessmentInfo? assessment;

  static Future<bool?> show({
    required BuildContext context,
    AssessmentInfo? assessment,
    Function(BuildContext, Widget)? builder,
  }) {
    final child = AddAssessmentPopup(assessment: assessment);
    return showGeneralDialog<bool?>(
      context: context,
      transitionBuilder: (_, a1, __, ___) => Transform.scale(
        scale: max(0.8, a1.value),
        child: Opacity(
          opacity: a1.value,
          child: builder?.call(context, child) ?? child,
        ),
      ),
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) => throw Exception(),
    );
  }

  @override
  State<AddAssessmentPopup> createState() => _AddAssessmentPopupState();
}

class _AddAssessmentPopupState extends State<AddAssessmentPopup> with AssessmentsConfigurerMixin {
  late final _bloc = AddAssessmentBloc(widget.assessment);
  final _formKey = GlobalKey<FormState>();
  final _subtopicsKey = GlobalKey<SubtopicSectionState>();
  late final TextEditingController _titleController = TextEditingController(
    text: widget.assessment?.name,
  );
  late final AddAssessmentFormHandler formHandler;

  bool get isEdit => widget.assessment != null;

  @override
  void initState() {
    super.initState();

    formHandler = AddAssessmentFormHandler(
      titleController: _titleController,
      selectedSubtopicIds: [
        ...(widget.assessment?.subtopics ?? []).map((e) => e.id),
      ],
      selectedDate: widget.assessment?.startAt,
      duration: widget.assessment?.duration,
      formKey: _formKey,
      hasStudents: configurer.hasStudents,
      isEdit: isEdit,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupLayout(
      padding: EdgeInsets.zero,
      closeButtonSize: 18,
      closeButtonContainerSize: 24,
      maxWidth: 528,
      builder: (context, isLoading, popup) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFF8F8F8),
          ),
          child: BlocBuilder<AddAssessmentBloc, AsyncSnapshot<AddAssessmentState>>(
            bloc: _bloc,
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PopupTitleBar(isEdit: isEdit),
                  state.when(
                    data: (data) {
                      const margin = EdgeInsets.symmetric(horizontal: 20);
                      final topicId = data.topicId;

                      return Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: margin,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const SizedBox(height: 12),
                                  TTextFormField(
                                    title: 'Assessment Name',
                                    hintText: 'Untitled Assessment',
                                    controller: _titleController,
                                    onChanged: formHandler.toggleAddButton,
                                    onFieldSubmitted: (_) async =>
                                        onSubmit(popup, topicId, data.subtopics?.length),
                                  ),
                                  const SizedBox(height: 12),
                                  _TopicSection(
                                    initialTopicId: topicId,
                                    topics: data.topicList,
                                    topicTitle: data.topicTitle,
                                    topicEmoji: data.topicEmoji,
                                    onTopicChanged: (v) {
                                      _bloc.selectTopic(v);
                                      formHandler.onTopicChanged();
                                      _subtopicsKey.currentState?.clearSubtopics();
                                    },
                                  ),
                                  const SizedBox(height: 12),
                                  if (data.subtopics != null)
                                    SubtopicSection(
                                      key: _subtopicsKey,
                                      subtopics: data.subtopics!,
                                      isLoading: data.loading,
                                      color: data.topicColor,
                                      onSubtopicChanged: formHandler.onSubtopicChanged,
                                      initialSubtopicIds: isEdit
                                          ? (widget.assessment?.subtopics ?? [])
                                              .map((e) => e.id)
                                              .toList()
                                          : [if (_bloc.subtopicId != null) _bloc.subtopicId!],
                                    ),
                                  const SizedBox(height: 17),
                                  TimeSection(formHandler: formHandler),
                                  const SizedBox(height: 10),
                                  ValueListenableBuilder(
                                    valueListenable: formHandler.gradeNotifier,
                                    builder: (context, gradeEnum, _) {
                                      if (gradeEnum == null) return empty;

                                      return Text.rich(
                                        TextSpan(
                                          text: 'Assessment accuracy grade: ',
                                          style: const TTextStyle.mediumXS().copyWith(
                                            fontWeight: regular,
                                            color: TColors.black.shade600,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: gradeEnum.grade,
                                              style: const TTextStyle.mediumXS().copyWith(
                                                fontWeight: bold,
                                                fontSize: 12,
                                                color: gradeEnum.color,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 24),
                                ],
                              ),
                            ),
                            const Divider(),
                            _BottomActionButtons(
                              loading: isLoading,
                              isEdit: widget.assessment != null,
                              formHandler: formHandler,
                              onSubmit: () async =>
                                  onSubmit(popup, topicId, data.subtopics?.length),
                            ),
                          ],
                        ),
                      );
                    },
                    loading: () => const Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 180, top: 160),
                        child: DefaultCircularProgressIndicator(
                          color: TColors.primary,
                          strokeWidth: 3,
                          size: 25,
                        ),
                      ),
                    ),
                    err: (_, __) => const Center(
                      child: TText(
                        'An error occurred',
                        style: TTextStyle.mediumS(color: TColors.danger),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Future<void> onSubmit(PopupLayoutData popup, String? topicId, int? subtopicLength) async {
    if (_formKey.currentState?.validate() == false) {
      return;
    }
    final fh = formHandler;

    await popup.execute(
      () async {
        if (widget.assessment == null) {
          await _bloc.createAssessment(
            name: _titleController.text,
            startAt: fh.startDate,
            dueAt: fh.endDate,
            topicId: topicId,
            allSubtopics: fh.selectedSubtopicIds.length == subtopicLength,
            subtopicIds: fh.selectedSubtopicIds,
          );
        } else {
          await _bloc.updateAssessment(
            assessmentId: widget.assessment!.id,
            name: _titleController.text,
            startAt: fh.startDate,
            dueAt: fh.endDate,
            topicId: topicId,
            subtopicIds: fh.selectedSubtopicIds,
          );
        }
      },
      false,
      false,
    );

    if (mounted) {
      Navigator.pop(context, true);
    }
  }
}

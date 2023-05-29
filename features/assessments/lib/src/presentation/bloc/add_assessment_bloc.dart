import 'dart:async';

import 'package:assessments/src/domain/assessments.graphql.repository.dart';
import 'package:assessments/src/domain/entity/assessment.dart';
import 'package:assessments/src/domain/entity/subtopic_info.dart';
import 'package:assessments/src/domain/entity/topic.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/utils/extensions/string_extensions.dart';
import 'package:dartx/dartx.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/schools_app.dart';

part 'add_assessment_state.dart';

class AddAssessmentBloc extends FutureAsyncSnapshotCubit<AddAssessmentState>
    with ClassInfoCacheMixin {
  AddAssessmentBloc(this.assessment);

  final _repo = AssessmentsRepository();
  final AssessmentInfo? assessment;

  @override
  FutureOr<AddAssessmentState> resolve() async {
    final topics = (await _repo.getTopicsForClass(classId!))
        .unwrap()
        .$class
        .topicsForClass
        .map((e) => Topic(
              id: e.id,
              title: e.title,
              emoji: e.emoji,
              color: e.color.toColor(),
            ))
        .toList();

    Topic? initialTopic;
    List<SubtopicInfo>? subtopics;

    initialTopic = topics.firstOrNullWhere(
      (element) => element.id == (assessment?.assessmentTopic.id ?? topicId),
    );

    if (initialTopic != null) {
      subtopics = await getSubtopics(initialTopic.id);
    }

    final isTopicScreen = topicId != null;
    final isCreating = assessment == null;

    return AddAssessmentState(
      topicId: initialTopic?.id,
      topicTitle: initialTopic?.title,
      topicColor: initialTopic?.color,
      topicEmoji: initialTopic?.emoji,
      topicList: isTopicScreen && isCreating ? null : topics,
      subtopics: subtopics,
      status: AddAssessmentStatus.active,
    );
  }

  Future<void> createAssessment({
    required String name,
    required DateTime startAt,
    required DateTime dueAt,
    required String? topicId,
    required bool allSubtopics,
    required List<String> subtopicIds,
  }) async {
    // The button is disabled if the topic is null, so this should never happen
    if (topicId == null) throw Exception('Topic ID cannot be null');
    emitLoading();

    await _repo.createDiagnosticTestSession(
      classId!,
      CreateDiagnosticTestSessionInput(
        name: name,
        startAt: startAt,
        dueAt: dueAt,
        topicID: topicId,
        allSubtopics: allSubtopics,
        subtopicIDs: subtopicIds,
      ),
    );

    emitWithData(
      state.data!.copyWith(
        status: AddAssessmentStatus.updated,
      ),
    );
  }

  Future<void> updateAssessment({
    required String assessmentId,
    required List<String> subtopicIds,
    String? name,
    DateTime? startAt,
    DateTime? dueAt,
    String? topicId,
  }) async {
    emitLoading();

    await _repo.updateDiagnosticTestSession(
      assessmentId,
      UpdateDiagnosticTestSessionInput(
        name: name,
        startAt: startAt,
        dueAt: dueAt,
        topicID: topicId,
        subtopicIDs: subtopicIds,
      ),
    );

    emitWithData(
      state.data!.copyWith(
        status: AddAssessmentStatus.updated,
      ),
    );
  }

  Future<void> selectTopic(String topicId) async {
    final data = state.data!;

    // This case is not possible, since we wont show a selection list
    if (data.topicList == null) throw Exception('Topic list cannot be null');

    final topic = data.topicList!.firstWhere((e) => e.id == topicId);
    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        data.copyWith(
          topicId: topic.id,
          topicTitle: topic.title,
          topicColor: topic.color,
          topicEmoji: topic.emoji,
          subtopics: [],
          loading: true,
        ),
      ),
    );

    final subtopics = await getSubtopics(topicId);
    emit(AsyncSnapshot.withData(
      ConnectionState.active,
      data.copyWith(
        topicId: topic.id,
        topicTitle: topic.title,
        topicColor: topic.color,
        topicEmoji: topic.emoji,
        subtopics: subtopics,
        status: AddAssessmentStatus.active,
        loading: false,
      ),
    ));
  }

  Future<List<SubtopicInfo>> getSubtopics(String topicId) async =>
      (await _repo.getSubtopicsForClass(classId!, topicId))
          .unwrap()
          .topicForClass
          .classSubtopics
          .map((e) => SubtopicInfo(id: e.id, title: e.title, icon: e.icon))
          .toList();

  void emitLoading() {
    emit(AsyncSnapshot.withData(
      ConnectionState.active,
      state.data!.copyWith(
        status: AddAssessmentStatus.updating,
      ),
    ));
  }
}

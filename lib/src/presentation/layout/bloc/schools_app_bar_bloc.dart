import 'dart:async';

import 'package:accounts_library/domain/repositories/auth_repository.dart';
import 'package:accounts_library/utils/functions.dart';
import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:core_flutter/utils/extensions/string_extensions.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:learn/learn.dart' show LearnConfigurer;
import 'package:learning_library/utils/learning_cache_service.dart';
import 'package:oxidized/oxidized.dart';
import 'package:pre_signup/pre_signup.dart';
import 'package:recase/recase.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/configurers/schools_learn_configurer.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.sanitized.dart';
import 'package:schools_app/src/services/class_info_cache.dart';

part 'schools_app_bar_state.dart';

class SchoolsAppBarBloc extends FutureAsyncSnapshotCubit<SchoolsAppBarState>
    with AsyncSnapshotCubitRefreshMixin, ClassInfoCacheMixin {
  SchoolsAppBarBloc({
    SchoolsAppBarType? type,
  }) : _type = type;

  SchoolsAppBarType? _type;

  final _learnRepo = SchoolsLearnRepository();
  final _authRepo = gi<AuthRepository>();
  final _preSignupRepo = gi<PreSignupRepository>();

  bool get selectedStudent =>
      platformUserId().isSome() ||
      (gi<LearnConfigurer>() as SchoolsLearnConfigurer).userType == UserType.student;

  @override
  FutureOr<SchoolsAppBarState> resolve() async {
    if (_type == SchoolsAppBarType.subtopic) {
      fetchSubtopic();
      return const SubtopicSchoolsAppBarState.loading();
    } else if (_type == SchoolsAppBarType.topic) {
      fetchTopic();
      return const TopicSchoolsAppBarState.loading();
    }

    return LearnSchoolsAppBarState();
  }

  Future<void> fetchSubtopic() async {
    Future<Progress?> subtopicProgress() {
      if (selectedStudent) {
        return _learnRepo
            .getSubtopicProgress(subtopicId!)
            .map((ok) => ok.subtopicProgress.progress)
            .unwrap();
      } else {
        final cachedProgress = _cachedProgressForClass(
          type: ProgressCacheType.subtopic,
          typeId: subtopicId!,
          classId: classId!,
        );
        return cachedProgress != null
            ? Future.value(cachedProgress)
            : _learnRepo
                .getSubtopicProgressForClass(subtopicId!, classId!)
                .map((ok) => ok.subtopicProgressForClassQuery.subtopicProgressForClass.progress)
                .unwrap();
      }
    }

    if (await _authRepo.isAuthenticated) {
      late GetSubtopicResponse res;
      late Progress? progress;
      late SubtopicState state;
      await Future.wait([
        _learnRepo.getSubtopic(subtopicId!, topicId!).then((v) => res = v.unwrap()),
        subtopicProgress().then((v) => progress = v),
        subtopicState().then((v) => state = v),
      ]);

      final subtopic = res.subtopic;
      if (subtopicId != null) {
        emitWithData(
          SubtopicSchoolsAppBarState(
            id: subtopic.id,
            icon: subtopic.icon,
            state: state,
            title: subtopic.title,
            progress: progress,
            topicId: topicId!,
            topicColor: res.skillTopic.color.toColor(),
          ),
        );
      }
    } else {
      final res = (await _preSignupRepo.getSubtopic(subtopicId!, topicId!)).unwrap();
      final subtopic = res.subtopic;

      if (subtopicId != null) {
        emitWithData(
          SubtopicSchoolsAppBarState(
            id: subtopic.id,
            icon: subtopic.icon,
            state: SubtopicState.notStarted,
            title: subtopic.title,
            topicId: topicId!,
            topicColor: res.skillTopic.color.toColor(),
          ),
        );
      }
    }
  }

  Future<void> fetchTopic() async {
    Future<Progress?> topicProgress() => wrapAuthenticated<Progress?>(
          () {
            if (selectedStudent) {
              return _learnRepo
                  .getTopicProgress(topicId!)
                  .map((ok) => ok.topicProgress.progress)
                  .unwrap();
            } else {
              final cachedProgress = _cachedProgressForClass(
                type: ProgressCacheType.topic,
                typeId: topicId!,
                classId: classId!,
              );
              return cachedProgress != null
                  ? Future.value(cachedProgress)
                  : _learnRepo
                      .getTopicProgressForClass(topicId!, classId!)
                      .map((ok) => ok.topicProgressForClassQuery.topicProgressForClass.progress)
                      .unwrap();
            }
          },
          () => Future.value(),
        );

    wrapAuthenticated(
      () async {
        late final Topic topic;
        late final Progress? progress;

        await Future.wait([
          _learnRepo.getTopic(topicId!).then((v) => topic = v.unwrap().topic),
          topicProgress().then((v) => progress = v),
        ]);
        if (topicId != null) {
          emitWithData(
            TopicSchoolsAppBarState(
              id: topic.id,
              emoji: topic.emoji,
              color: topic.color.toColor(),
              title: topic.title,
              progress: progress,
            ),
          );
        }
      },
      () async {
        final topic = (await _preSignupRepo.getTopic(topicId!)).unwrap().topic;
        if (topicId != null) {
          emitWithData(
            TopicSchoolsAppBarState(
              id: topic.id,
              emoji: topic.emoji,
              color: topic.color.toColor(),
              title: topic.title,
            ),
          );
        }
      },
    );
  }

  Future<SubtopicState> subtopicState() async {
    if (selectedStudent) {
      return _learnRepo
          .getSubtopicState(subtopicId!)
          .map((ok) => ok.subtopicStateResult.state)
          .unwrap();
    } else {
      final cachedSubtopicState = _cachedSubtopicStateForClass(
        id: subtopicId!,
        classId: classId!,
      );

      return cachedSubtopicState != null
          ? Future.value(cachedSubtopicState)
          : _learnRepo
              .getSubtopicStateForClass(subtopicId!, classId!)
              .map((ok) => ok.subtopicStateForClass.stateForClass)
              .unwrap();
    }
  }

  void reload({required SchoolsAppBarType? type}) {
    _type = type;
    refresh();
  }
}

enum SchoolsAppBarType {
  learn,
  topic,
  subtopic,
}

// HACK: The graphql cache doesn't seem to be resolving the existence of the progressForClass in the topics/subtopics
// TODO(oliatienza): Generalize manual cached value resolving
Progress? _cachedProgressForClass({
  required ProgressCacheType type,
  required String typeId,
  required String classId,
}) {
  final topicKey = '${type.name.pascalCase}:$typeId';
  final entry = LearningCacheService().store.toMap()[topicKey];
  if (entry != null) {
    final progressKey = 'progressForClass({"id":"$classId"})';
    final progressEntry = entry[progressKey]['progress'];
    if (progressEntry != null && progressEntry is Map<String, dynamic>) {
      return Progress(
        $__typename: 'Progress',
        correct: progressEntry['correct'] as double,
        wrong: progressEntry['wrong'] as double,
      );
    }
  }

  return null;
}

// HACK: The graphql cache doesn't seem to be resolving the existence of the stateForClass in the topics/subtopics
SubtopicState? _cachedSubtopicStateForClass({
  required String classId,
  required String id,
}) {
  final topicKey = 'Subtopic:$id';
  final entry = LearningCacheService().store.toMap()[topicKey];
  if (entry != null) {
    final stateKey = 'stateForClass({"id":"$classId"})';
    final stateEntry = entry[stateKey];
    if (stateEntry != null && stateEntry is String) {
      return SubtopicState.values.firstWhere(
        (e) => e.name == stateEntry.camelCase,
      );
    }
  }

  return null;
}

enum ProgressCacheType {
  topic,
  subtopic,
}

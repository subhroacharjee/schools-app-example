// ignore_for_file: implementation_imports

import 'dart:async';

import 'package:accounts_library/domain/repositories/auth_repository.dart';
import 'package:core/di.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:core_flutter/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:learn/learn.dart';
import 'package:learning_library/utils/learning_cache_service.dart';
import 'package:oxidized/oxidized.dart';
import 'package:pre_signup/pre_signup.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.repository.dart';
import 'package:schools_app/src/utils/schools_config.dart';
import 'package:skill_info/skill_info.dart' as si;

@LazySingleton(as: LearnConfigurer)
class SchoolsLearnConfigurer extends LearnConfigurer with ClassInfoCacheMixin {
  UserType? userType;

  final _authRepo = gi<AuthRepository>();
  final _presignupRepo = gi<PreSignupRepository>();
  final _schoolsLearnRepo = gi<SchoolsLearnRepository>();
  // Used as dummy data for pre-sign up state
  final _emptyProgress = Progress($__typename: 'Progress', correct: 0, wrong: 0);

  bool get accessingStudent => platformUserId().isSome();

  @override
  bool get hideTopicProgress => false;

  @override
  Future<bool> get isSelectedYearChanged async => !(await _authRepo.isAuthenticated);

  @override
  Future<bool> actionsAllowed() => _authRepo.isAuthenticated;

  @override
  void onActionsNotAllowed() {
    // Doesn't not show prompt if null
    (gi<si.SkillInfoConfigurer>() as SchoolsSkillInfoConfigurer).authenticationPromptListener
      ..value = 'You must be logged in to edit'
      ..value = null;
  }

  @override
  void selectTopic(String topicId) => classInfoCache.setTopicId(topicId);

  @override
  Future<List<TopicEntity>> getAllTopics() async => SchoolsConfig(
        teacher: () {
          log.e('Getting all topics for classId: $classId');
          return _schoolsLearnRepo
              .getTopicsForClass(classId!)
              .map(
                (ok) => ok.topicsClass.topicsForClass
                    .map(
                      (e) => TopicEntity(
                        id: e.id,
                        title: e.title,
                        color: e.color,
                        emoji: e.emoji,
                        progress: Progress(
                          $__typename: 'Progress',
                          correct: e.topicsProgressForClass.progress.correct,
                          wrong: e.topicsProgressForClass.progress.wrong,
                        ),
                      ),
                    )
                    .toList(),
              )
              .unwrap();
        },
        accessedStudent: () => _schoolsLearnRepo
            .getTopicsForClassStudent(classId!)
            .map(
              (ok) => ok.topicsStudent.topicsForStudent
                  .map(
                    (e) => TopicEntity(
                      id: e.id,
                      title: e.title,
                      color: e.color,
                      emoji: e.emoji,
                      progress: Progress(
                        $__typename: 'Progress',
                        correct: e.progress.correct,
                        wrong: e.progress.wrong,
                      ),
                    ),
                  )
                  .toList(),
            )
            .unwrap(),
        student: () => super.getAllTopics(),
        preSignup: () {
          log.e('Getting all topics for year: $yearId');
          return _presignupRepo
              .getTopicsForYear(yearId!)
              .map(
                (ok) => ok.allTopic.topics
                    .map(
                      (e) => TopicEntity(
                        id: e.id,
                        title: e.title,
                        color: e.color,
                        emoji: e.emoji,
                      ),
                    )
                    .toList(),
              )
              .unwrap();
        },
      )();

  @override
  Future<SubtopicForUserEntity> getSubtopicForUser(String topicId) async {
    log.e('Getting subtopics for topic: $topicId');
    return SchoolsConfig(
      teacher: () async {
        final res = await _schoolsLearnRepo.getSubtopicsForClass(classId!, topicId).unwrap();
        final topic = res.topicForClass;
        return SubtopicForUserEntity(
          title: topic.title,
          color: topic.color,
          subtopicsForUser: topic.classSubtopics.map(
            (e) {
              return SubtopicEntity(
                id: e.id,
                title: e.title,
                icon: e.icon,
                flaggedSkills: e.flaggedSkillsForClass,
                taughtSkills: e.taughtSkillsForClass,
                progress: Progress(
                  $__typename: '',
                  correct: e.subtopicsProgressForClass.progress.correct,
                  wrong: e.subtopicsProgressForClass.progress.wrong,
                ),
                state: e.stateForClass,
                totalSkills: e.totalSkillsForClass,
                years: _getYearRange(e.years.map((e) => e.title)),
              );
            },
          ).toList(),
        );
      },
      accessedStudent: () async {
        final res = await _schoolsLearnRepo.getSubtopicsForClassStudent(classId!, topicId).unwrap();
        final topic = res.topicForStudent;
        return SubtopicForUserEntity(
          title: topic.title,
          color: topic.color,
          subtopicsForUser: topic.studentSubtopics.map(
            (e) {
              return SubtopicEntity(
                id: e.id,
                title: e.title,
                icon: e.icon,
                flaggedSkills: e.flaggedSkillsForClass,
                taughtSkills: e.taughtSkillsForClass,
                progress: Progress(
                  $__typename: '',
                  correct: e.progress.correct,
                  wrong: e.progress.wrong,
                ),
                state: e.stateForClass,
                totalSkills: e.totalSkillsForClass,
                years: _getYearRange(e.years.map((e) => e.title)),
              );
            },
          ).toList(),
        );
      },
      student: () async {
        final topic = await _schoolsLearnRepo
            .getSubtopicsForStudent(topicId)
            .map((ok) => ok.getSubtopicForStudent)
            .unwrap();

        return SubtopicForUserEntity(
          title: topic.title,
          color: topic.color,
          subtopicsForUser: topic.subtopicsForUser
              .map(
                (e) => SubtopicEntity(
                  id: e.id,
                  title: e.title,
                  icon: e.icon,
                  progress: Progress(
                    $__typename: '',
                    correct: e.progress.correct,
                    wrong: e.progress.wrong,
                  ),
                ),
              )
              .toList(),
        );
      },
      preSignup: () async {
        final subtopic =
            (await _presignupRepo.getSubtopicsForYear(yearId!, topicId).unwrap()).sTopic;

        return SubtopicForUserEntity(
          color: subtopic.color,
          subtopicsForUser: subtopic.subtopicsForYear
              .map(
                (e) => SubtopicEntity(
                  id: e.id,
                  title: e.title,
                  icon: e.icon,
                  state: SubtopicState.notStarted,
                  taughtSkills: 0,
                  flaggedSkills: 0,
                  totalSkills: e.totalSkills,
                  progress: _emptyProgress,
                  years: _getYearRange(e.years.map((e) => e.title)),
                ),
              )
              .toList(),
        );
      },
    ).call();
  }

  @override
  Future<SkillsInSubtopic> getSkillsInSubtopic(String topicId, String subtopicId) async =>
      SchoolsConfig(
        teacher: () async {
          final res = await _schoolsLearnRepo
              .getSkillsForClass(
                classId!,
                subtopicId,
                topicId,
              )
              .unwrap();

          return SkillsInSubtopic(
            topicColor: res.classTopic.color.toColor(),
            subtopicSkill: res.subtopicForClass.classSkills.map(
              (e) {
                return SkillEntity(
                  id: e.id,
                  title: e.title,
                  headerText: e.headerTextForClass,
                  flagged: e.flaggedForClass,
                  taught: e.taughtForClass,
                  progress: Progress(
                    $__typename: '',
                    correct: e.skillsProgressForClass.progress.correct,
                    wrong: e.skillsProgressForClass.progress.wrong,
                  ),
                );
              },
            ).toList(),
          );
        },
        accessedStudent: () async {
          final res = await _schoolsLearnRepo
              .getSkillsForClassStudent(
                classId!,
                subtopicId,
                topicId,
              )
              .unwrap();

          return SkillsInSubtopic(
            topicColor: res.studentTopic.color.toColor(),
            subtopicSkill: res.subtopicForStudent.studentSkills.map(
              (e) {
                return SkillEntity(
                  id: e.id,
                  title: e.title,
                  headerText: e.headerTextForStudent,
                  flagged: e.flaggedForClass,
                  taught: e.taughtForClass,
                  progress: Progress(
                    $__typename: '',
                    correct: e.progress.correct,
                    wrong: e.progress.wrong,
                  ),
                );
              },
            ).toList(),
          );
        },
        student: () => super.getSkillsInSubtopic(topicId, subtopicId),
        preSignup: () async {
          final res = await _presignupRepo.skillsForYear(yearId!, topicId, subtopicId).unwrap();
          final skill = res.skSubtopic;

          return SkillsInSubtopic(
            topicColor: res.yearTopic.color.toColor(),
            subtopicSkill: skill.skillsForYear
                .map((e) => SkillEntity(
                      id: e.id,
                      title: e.title,
                      headerText: e.headerTextForYear,
                      taught: false,
                      flagged: false,
                      progress: _emptyProgress,
                    ))
                .toList(),
          );
        },
      ).call();

  @override
  Future<List<SubtopicInfo>> getSubtopicsIconAndTitle(String topicId) async {
    log.e('Getting subtopics for topic: $topicId');
    if (await _authRepo.isAuthenticated) {
      if (userType == UserType.teacher) {
        if (accessingStudent) {
          return super.getSubtopicsIconAndTitle(topicId);
        }
        final res =
            await _schoolsLearnRepo.getSubtopicsIconAndTitleForClass(classId!, topicId).unwrap();
        final subtopics = res.mTopic.mSubtopics;

        return subtopics
            .map(
              (e) => SubtopicInfo(
                id: e.id,
                title: e.title,
                icon: e.icon,
              ),
            )
            .toList();
      } else if (userType == UserType.student) {
        return super.getSubtopicsIconAndTitle(topicId);
      } else {
        throw Exception('User type not supported: $userType');
      }
    } else {
      final subtopic = (await _presignupRepo.getSubtopicsForYear(yearId!, topicId).unwrap()).sTopic;

      return subtopic.subtopicsForYear
          .map(
            (e) => SubtopicInfo(
              id: e.id,
              title: e.title,
              icon: e.icon,
            ),
          )
          .toList();
    }
  }

  @override
  FutureOr<void> onSkillItemTapped({
    required BuildContext context,
    required String topicId,
    required String subtopicId,
    required String skillId,
    required Map<String, SkillEntity> skillIds,
  }) async {
    classInfoCache.setSkillId(skillId);

    await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 500),
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (_, __, ___) => Theme(
        data: Theme.of(context).copyWith(
          cardTheme: Theme.of(context).cardTheme.copyWith(
                shadowColor: Colors.black,
              ),
        ),
        child: si.SkillInfoScreen(
          topicId: topicId,
          subtopicId: subtopicId,
          skillId: skillId,
          skillIds: skillIds.map(
            (key, v) => MapEntry(
              key,
              si.Skill(
                id: v.id,
                flagged: v.flagged ?? false,
                headerText: v.headerText,
                progress: si.Progress(
                  correct: v.progress?.correct ?? 0,
                  wrong: v.progress?.wrong ?? 0,
                ),
                taught: v.taught ?? false,
                title: v.title,
              ),
            ),
          ),
        ),
      ),
      transitionBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
        position: CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOutCubic,
        ).drive(Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        )),
        child: child,
      ),
    );
  }

  @override
  Future<void> toggleTeachSkill(String skillId, bool newValue) async => SchoolsConfig(
        teacher: () async {
          if (newValue) {
            await _schoolsLearnRepo.teachSkillForClass(classId!, skillId);
          } else {
            await _schoolsLearnRepo.unteachSkillForClass(classId!, skillId);
          }
          LearningCacheService().updateCachedSubtopicStatsCount(
            subtopicId!,
            SubtopicStats.taughtSkills,
            newValue,
            classId: classId,
          );
        },
        student: () => super.toggleTeachSkill(skillId, newValue),
        preSignup: () => throw UnimplementedError(),
      )();

  @override
  Future<void> toggleFlagSkill(String skillId, bool newValue) async => SchoolsConfig(
        teacher: () async {
          if (newValue) {
            await _schoolsLearnRepo.flagSkillForClass(classId!, skillId);
          } else {
            await _schoolsLearnRepo.unflagSkillForClass(classId!, skillId);
          }
          LearningCacheService().updateCachedSubtopicStatsCount(
            subtopicId!,
            SubtopicStats.flaggedSkills,
            newValue,
            classId: classId,
          );
        },
        student: () => super.toggleFlagSkill(skillId, newValue),
        preSignup: () => throw UnimplementedError(),
      )();

  @override
  Future<void> setSubtopicState(String? id, SubtopicState subtopicState) async => SchoolsConfig(
        teacher: () {
          _schoolsLearnRepo.setSubtopicStateForClass(
            classId!,
            id!,
            subtopicState,
          );
          LearningCacheService().updateCachedSubtopicState(
            subtopicId!,
            subtopicState,
            classId: classId,
          );
        },
        student: () => super.setSubtopicState(id, subtopicState),
        preSignup: () => throw UnimplementedError(),
      )();

  @override
  Future<void> onSubtopicItemTapped(BuildContext context, String topicId, String subtopicId) async {
    void selectSubtopic() {
      gi<ClassInfoCache>().setSubtopicId(subtopicId);
      context.go('/curriculum/topic/$topicId/subtopic/$subtopicId');
    }

    SchoolsConfig(
      teacher: selectSubtopic,
      accessedStudent: selectSubtopic,
      student: () => throw UnimplementedError(),
      preSignup: selectSubtopic,
    )();
  }

  String _getYearRange(Iterable<String> allYears) {
    final sortedYears = allYears.where((e) {
      final val = int.tryParse(e);
      return val != null && val >= 3 && val <= 10;
    }).toList()
      ..sort(
        (a, b) => int.parse(a).compareTo(
          int.parse(b),
        ),
      );

    final y = Intl.plural(allYears.length, one: 'Year', other: 'Years');
    if (sortedYears.isEmpty) {
      return '';
    } else if (sortedYears.length == 1) {
      return '$y ${sortedYears.first}';
    } else {
      return '$y ${sortedYears.first}-${sortedYears.last}';
    }
  }
}

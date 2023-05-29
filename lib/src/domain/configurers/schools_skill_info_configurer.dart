import 'package:accounts_library/domain/repositories/auth_repository.dart';
import 'package:core/di.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user/current_user.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:learning_library/utils/learning_cache_service.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_skill_info.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_skill_info.graphql.sanitized.dart'
    hide Answer;
import 'package:schools_app/src/services/class_info_cache.dart';
import 'package:schools_app/src/utils/schools_config.dart';
import 'package:skill_info/skill_info.dart';

@LazySingleton(as: SkillInfoConfigurer)
class SchoolsSkillInfoConfigurer extends SkillInfoConfigurer with ClassInfoCacheMixin {
  UserType? userType;

  final authenticationPromptListener = ValueNotifier<String?>(null);
  final _authRepo = gi<AuthRepository>();
  final _schoolsRepo = gi<SchoolsLearnRepository>();
  final _schoolsSiRepo = gi<SchoolsSkillInfoRepository>();

  bool get activeUserIsStudent => platformUserId().isSome() || userType == UserType.student;

  @override
  Future<bool> actionsAllowed() async => _authRepo.isAuthenticated;

  @override
  Future<bool> canTagQuestionGroup() => _authRepo.isAuthenticated;

  @override
  void onActionsNotAllowed() {
    // Doesn't not show prompt if null
    authenticationPromptListener
      ..value = 'You must be logged in to edit'
      ..value = null;
  }

  @override
  Future<void> toggleTeachSkill(String skillId, bool newValue) async => SchoolsConfig(
        teacher: () async {
          if (newValue) {
            await _schoolsRepo.teachSkillForClass(classId!, skillId);
          } else {
            await _schoolsRepo.unteachSkillForClass(classId!, skillId);
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
            await _schoolsRepo.flagSkillForClass(classId!, skillId);
          } else {
            await _schoolsRepo.unflagSkillForClass(classId!, skillId);
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
  Future<bool> showReportQuestionButton() => _authRepo.isAuthenticated;

  @override
  Future<void> tagQuestionGroup({
    required String id,
    required QuestionGroupTag tag,
    UserId? authenticatedUserId,
  }) async =>
      SchoolsConfig(
        teacher: () => _schoolsSiRepo.tagQuestionGroupForClass(
          classId!,
          id,
          tag,
        ),
        student: () => super.tagQuestionGroup(
          id: id,
          tag: tag,
        ),
        preSignup: () => throw UnimplementedError(),
      )();

  @override
  Future<TResult<QuestionState>> answerPracticeQuestion({
    required String id,
    required String answerContent,
    UserId? authenticatedUserId,
  }) async =>
      SchoolsConfig(
        teacher: () => _schoolsSiRepo
            .answerPracticeQuestionForClass(
              classId!,
              id,
              answerContent,
            )
            .map(
              (ok) => ok.answerPracticeQuestionForClass.isCorrect
                  ? QuestionState.correct
                  : QuestionState.incorrect,
            ),
        student: () => super.answerPracticeQuestion(
          id: id,
          answerContent: answerContent,
        ),
        preSignup: () => throw UnimplementedError(),
      )();

  @override
  Future<TResult<String>> resetQuestionGroup(String id) async => SchoolsConfig(
        teacher: () => _schoolsSiRepo.resetQuestionGroupForClass(classId!, id).map((_) => id),
        student: () => super.resetQuestionGroup(id),
        preSignup: () => throw UnimplementedError(),
      )();

  @override
  Future<TResult<String>> resetPracticeQuestion(String id) async => SchoolsConfig(
        teacher: () => _schoolsSiRepo.resetPracticeQuestionForClass(classId!, id).map((_) => id),
        student: () => super.resetPracticeQuestion(id),
        preSignup: () => throw UnimplementedError(),
      )();

  @override
  Future<TResult<List<QuestionGroupTagInfo>>> getQuestionGroupTags(String skillId) async =>
      SchoolsConfig(
        teacher: () => _schoolsSiRepo.getQuestionGroupTagsForClass(classId!, skillId).map(
              (ok) => ok.skill.getQuestionGroupTagsForClass
                  .map(
                    (e) => QuestionGroupTagInfo(
                      id: e.questionGroupID,
                      tag: e.tag,
                    ),
                  )
                  .toList(),
            ),
        student: () => super.getQuestionGroupTags(skillId),
        preSignup: () => Ok<List<QuestionGroupTagInfo>, TuteroError>(<QuestionGroupTagInfo>[]),
      )();

  // @override
  // Future<PracticeQuestionAnswer?> practiceQuestionAnswer(String id) async => SchoolsConfig(
  //       teacher: () async => _schoolsSiRepo.practiceQuestionAnswerForClass(classId!, id).when(
  //             ok: (ok) {
  //               final pqa = ok.practiceQuestionAnswerForClass;
  //               return pqa == null
  //                   ? null
  //                   : PracticeQuestionAnswer(
  //                       id: pqa.id,
  //                       answer: pqa.content,
  //                       isCorrect: pqa.isCorrect,
  //                     );
  //             },
  //             err: (_) => null,
  //           ),
  //       student: () async => super.practiceQuestionAnswer(id),
  //       preSignup: () async => null,
  //     )();

  @override
  Future<SkillInfoState> getSkillInfoState(String skillId) async => SchoolsConfig(
        teacher: () async {
          // TODO(oliatienza): Refactor SkillInfoBloc to make this more fragmented and to avoid
          // repetition
          final r = (await _schoolsSiRepo.getClassSkillInfo(
            GetAllEdgeOptions(sortByEdgeProperty: true),
            skillId,
            classId!,
          ))
              .unwrap();

          final questionGroups = <QuestionGroup>[];
          final allQuestionGroups = r.getQuestionGroupsLinkedToSkill.allQuestionGroups;
          final questionStatesMap = <String, QuestionState>{};
          final userAnswersMap = <String, String>{};

          for (int i = 0; i < allQuestionGroups.length; i++) {
            final qg = allQuestionGroups[i];
            QuestionGroupTag? tag;
            tag = (await _schoolsSiRepo.getQuestionGroupTagsForClass(classId!, skillId))
                .unwrap()
                .skill
                .getQuestionGroupTagsForClass
                .firstOrNullWhere((e) => qg.id == e.questionGroupID)
                ?.tag;

            final questions = qg.allQuestions.where((e) => e.active).map(
              (q) {
                final pqa = q.practiceQuestionAnswerForClass;
                if (pqa != null) {
                  userAnswersMap[q.id] = pqa.content;
                  questionStatesMap[q.id] =
                      pqa.isCorrect ? QuestionState.correct : QuestionState.incorrect;
                } else {
                  questionStatesMap[q.id] = QuestionState.standard;
                }

                final answers = q.answers
                    .map(
                      (a) => Answer(
                        id: a.id,
                        content: a.content,
                        isCorrect: a.isCorrect,
                      ),
                    )
                    .toList();
                return q is FqsShortQuestion
                    ? ActiveShortQuestion(
                        id: q.id,
                        active: q.active,
                        answers: answers,
                        calculator: q.calculator,
                        content: q.content,
                        figure: q.figure,
                        hint: q.hint,
                        needsRefactoring: q.needsRefactoring,
                        answerFormat: q.answerFormat,
                        decimals: q.decimals,
                        exact: q.exact,
                        prefix: q.prefix,
                        showHelper: q.showHelper,
                        suffix: q.suffix,
                      )
                    : ActiveMultiQuestion(
                        id: q.id,
                        content: q.content,
                        answers: answers,
                        active: q.active,
                        figure: q.figure,
                        calculator: q.calculator,
                        hint: q.hint,
                        needsRefactoring: q.needsRefactoring,
                      );
              },
            ).toList();
            if (questions.isEmpty) continue;

            questionGroups.add(
              QuestionGroup(
                index: i,
                id: qg.id,
                questions: questions,
                tag: tag,
              ),
            );
          }

          final firstNonEmptyQuestionGroupIndex =
              questionGroups.indexWhere((element) => element.questions.isNotEmpty);
          final firstName = (await GetCurrentUser()()).when(
            ok: (user) => user.firstName ?? '',
            err: (_) => '',
          );

          return SkillInfoState(
            displayName: firstName,
            activeQuestion: firstNonEmptyQuestionGroupIndex == -1
                ? null
                : questionGroups[firstNonEmptyQuestionGroupIndex].questions.first,
            questionGroups: questionGroups,
            skillTitle: r.skillInfoSkill.title,
            activeQuestionGroupIndex: firstNonEmptyQuestionGroupIndex,
            activeQuestionIndex: 0,
            questionStates: questionStatesMap,
            userAnswerContentMap: userAnswersMap,
          );
        },
        student: () => super.getSkillInfoState(skillId),
        preSignup: () => super.getSkillInfoState(skillId),
      )();
}

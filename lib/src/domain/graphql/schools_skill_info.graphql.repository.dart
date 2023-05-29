// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

import 'package:core/di.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:injectable/injectable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_skill_info.graphql.datasource.dart';
import 'package:schools_app/src/domain/graphql/schools_skill_info.graphql.sanitized.dart';

abstract class SchoolsSkillInfoRepository {
  factory SchoolsSkillInfoRepository() => gi<SchoolsSkillInfoRepository>();

  Future<TResult<GetClassSkillInfoResponse>> getClassSkillInfo(
    GetAllEdgeOptions? options,
    String skillId,
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetQuestionGroupTagsForClassResponse>>
      getQuestionGroupTagsForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<TagQuestionGroupForClassResponse>> tagQuestionGroupForClass(
    String classId,
    String questionGroupId,
    QuestionGroupTag tag, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AnswerPracticeQuestionForClassResponse>>
      answerPracticeQuestionForClass(
    String classId,
    String questionId,
    String answer, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ResetQuestionGroupForClassResponse>>
      resetQuestionGroupForClass(
    String classId,
    String questionGroupId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ResetPracticeQuestionForClassResponse>>
      resetPracticeQuestionForClass(
    String classId,
    String questionId, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: SchoolsSkillInfoRepository)
class SchoolsSkillInfoRepositoryImpl implements SchoolsSkillInfoRepository {
  SchoolsSkillInfoRepositoryImpl({required this.dataSource});

  final SchoolsSkillInfoDataSource dataSource;

  @override
  Future<TResult<GetClassSkillInfoResponse>> getClassSkillInfo(
    GetAllEdgeOptions? options,
    String skillId,
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getClassSkillInfo(
        GetClassSkillInfoArgs(
          options: options,
          skillId: skillId,
          classId: classId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetQuestionGroupTagsForClassResponse>>
      getQuestionGroupTagsForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.getQuestionGroupTagsForClass(
            GetQuestionGroupTagsForClassArgs(
              classId: classId,
              skillId: skillId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<TagQuestionGroupForClassResponse>> tagQuestionGroupForClass(
    String classId,
    String questionGroupId,
    QuestionGroupTag tag, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.tagQuestionGroupForClass(
        TagQuestionGroupForClassArgs(
          classId: classId,
          questionGroupId: questionGroupId,
          tag: tag,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<AnswerPracticeQuestionForClassResponse>>
      answerPracticeQuestionForClass(
    String classId,
    String questionId,
    String answer, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.answerPracticeQuestionForClass(
            AnswerPracticeQuestionForClassArgs(
              classId: classId,
              questionId: questionId,
              answer: answer,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<ResetQuestionGroupForClassResponse>>
      resetQuestionGroupForClass(
    String classId,
    String questionGroupId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.resetQuestionGroupForClass(
            ResetQuestionGroupForClassArgs(
              classId: classId,
              questionGroupId: questionGroupId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<ResetPracticeQuestionForClassResponse>>
      resetPracticeQuestionForClass(
    String classId,
    String questionId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.resetPracticeQuestionForClass(
            ResetPracticeQuestionForClassArgs(
              classId: classId,
              questionId: questionId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
}

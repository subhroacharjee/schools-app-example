// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// DataSourceGenerator
// **************************************************************************

import 'package:core/di.dart';
import 'package:core/domain/errors/graphql_error.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:core/utils/graphql_datasource_mixin.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_skill_info.graphql.dart';
import 'package:schools_app/src/domain/graphql/schools_skill_info.graphql.sanitized.dart';

abstract class SchoolsSkillInfoDataSource {
  factory SchoolsSkillInfoDataSource() => gi<SchoolsSkillInfoDataSource>();

  Future<TResult<GetClassSkillInfoResponse>> getClassSkillInfo(
    GetClassSkillInfoArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetQuestionGroupTagsForClassResponse>>
      getQuestionGroupTagsForClass(
    GetQuestionGroupTagsForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<TagQuestionGroupForClassResponse>> tagQuestionGroupForClass(
    TagQuestionGroupForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AnswerPracticeQuestionForClassResponse>>
      answerPracticeQuestionForClass(
    AnswerPracticeQuestionForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ResetQuestionGroupForClassResponse>>
      resetQuestionGroupForClass(
    ResetQuestionGroupForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ResetPracticeQuestionForClassResponse>>
      resetPracticeQuestionForClass(
    ResetPracticeQuestionForClassArgs args, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: SchoolsSkillInfoDataSource)
class SchoolsSkillInfoDataSourceImpl
    with GraphQLDataSourceMixin
    implements SchoolsSkillInfoDataSource {
  SchoolsSkillInfoDataSourceImpl({required this.client});

  @override
  final GraphQLClient client;

  @override
  Future<TResult<GetClassSkillInfoResponse>> getClassSkillInfo(
    GetClassSkillInfoArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetClassSkillInfo(
              Options$Query$GetClassSkillInfo(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetClassSkillInfoResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetQuestionGroupTagsForClassResponse>>
      getQuestionGroupTagsForClass(
    GetQuestionGroupTagsForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .query$GetQuestionGroupTagsForClass(
                  Options$Query$GetQuestionGroupTagsForClass(
                      variables: args.toGen()))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(GetQuestionGroupTagsForClassResponse.fromGen(
                      r.parsedData!)));
  @override
  Future<TResult<TagQuestionGroupForClassResponse>> tagQuestionGroupForClass(
    TagQuestionGroupForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$TagQuestionGroupForClass(
              Options$Mutation$TagQuestionGroupForClass(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(TagQuestionGroupForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<AnswerPracticeQuestionForClassResponse>>
      answerPracticeQuestionForClass(
    AnswerPracticeQuestionForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .mutate$AnswerPracticeQuestionForClass(
                  Options$Mutation$AnswerPracticeQuestionForClass(
                      variables: args.toGen()))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(AnswerPracticeQuestionForClassResponse.fromGen(
                      r.parsedData!)));
  @override
  Future<
      TResult<ResetQuestionGroupForClassResponse>> resetQuestionGroupForClass(
    ResetQuestionGroupForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$ResetQuestionGroupForClass(
              Options$Mutation$ResetQuestionGroupForClass(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(ResetQuestionGroupForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<ResetPracticeQuestionForClassResponse>>
      resetPracticeQuestionForClass(
    ResetPracticeQuestionForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .mutate$ResetPracticeQuestionForClass(
                  Options$Mutation$ResetPracticeQuestionForClass(
                      variables: args.toGen()))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(ResetPracticeQuestionForClassResponse.fromGen(
                      r.parsedData!)));
}

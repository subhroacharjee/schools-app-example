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
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.dart';
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.sanitized.dart';
import 'package:schema/schema.dart';

abstract class PreSignupDataSource {
  factory PreSignupDataSource() => gi<PreSignupDataSource>();

  Future<TResult<GetTopicsForYearResponse>> getTopicsForYear(
    GetTopicsForYearArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicYearsResponse>> getTopicYears(
    GetTopicYearsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForYearResponse>> getSubtopicsForYear(
    GetSubtopicsForYearArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicYearResponse>> getSubtopicYear(
    GetSubtopicYearArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<SkillsForYearResponse>> skillsForYear(
    SkillsForYearArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AllYearsResponse>> allYears({UserId? authenticatedUserId});
  Future<TResult<GetTopicResponse>> getTopic(
    GetTopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicResponse>> getSubtopic(
    GetSubtopicArgs args, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: PreSignupDataSource)
class PreSignupDataSourceImpl
    with GraphQLDataSourceMixin
    implements PreSignupDataSource {
  PreSignupDataSourceImpl({required this.client});

  @override
  final GraphQLClient client;

  @override
  Future<TResult<GetTopicsForYearResponse>> getTopicsForYear(
    GetTopicsForYearArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopicsForYear(Options$Query$GetTopicsForYear(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicsForYearResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetTopicYearsResponse>> getTopicYears(
    GetTopicYearsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopicYears(Options$Query$GetTopicYears(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicYearsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicsForYearResponse>> getSubtopicsForYear(
    GetSubtopicsForYearArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicsForYear(Options$Query$GetSubtopicsForYear(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicsForYearResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicYearResponse>> getSubtopicYear(
    GetSubtopicYearArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicYear(Options$Query$GetSubtopicYear(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicYearResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<SkillsForYearResponse>> skillsForYear(
    SkillsForYearArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$SkillsForYear(Options$Query$SkillsForYear(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(SkillsForYearResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<AllYearsResponse>> allYears({UserId? authenticatedUserId}) =>
      authorizedClient(authenticatedUserId)
          .query$AllYears(
              Options$Query$AllYears(fetchPolicy: FetchPolicy.cacheFirst))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(AllYearsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetTopicResponse>> getTopic(
    GetTopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopic(Options$Query$GetTopic(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicResponse>> getSubtopic(
    GetSubtopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopic(Options$Query$GetSubtopic(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicResponse.fromGen(r.parsedData!)));
}

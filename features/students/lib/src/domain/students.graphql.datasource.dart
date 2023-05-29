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
import 'package:students/src/domain/students.graphql.dart';
import 'package:students/src/domain/students.graphql.sanitized.dart';

abstract class StudentsDataSource {
  factory StudentsDataSource() => gi<StudentsDataSource>();

  Future<TResult<ComprehensionForTopicResponse>> comprehensionForTopic(
    ComprehensionForTopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ComprehensionForSubtopicResponse>> comprehensionForSubtopic(
    ComprehensionForSubtopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ComprehensionResponse>> comprehension(
    ComprehensionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ClassCodeResponse>> classCode(
    ClassCodeArgs args, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: StudentsDataSource)
class StudentsDataSourceImpl
    with GraphQLDataSourceMixin
    implements StudentsDataSource {
  StudentsDataSourceImpl({required this.client});

  @override
  final GraphQLClient client;

  @override
  Future<TResult<ComprehensionForTopicResponse>> comprehensionForTopic(
    ComprehensionForTopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$ComprehensionForTopic(
              Options$Query$ComprehensionForTopic(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(ComprehensionForTopicResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<ComprehensionForSubtopicResponse>> comprehensionForSubtopic(
    ComprehensionForSubtopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$ComprehensionForSubtopic(
              Options$Query$ComprehensionForSubtopic(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(ComprehensionForSubtopicResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<ComprehensionResponse>> comprehension(
    ComprehensionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$Comprehension(
              Options$Query$Comprehension(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(ComprehensionResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<ClassCodeResponse>> classCode(
    ClassCodeArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$ClassCode(Options$Query$ClassCode(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(ClassCodeResponse.fromGen(r.parsedData!)));
}

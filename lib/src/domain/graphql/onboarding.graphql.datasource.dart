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
import 'package:schools_app/src/domain/graphql/onboarding.graphql.dart';
import 'package:schools_app/src/domain/graphql/onboarding.graphql.sanitized.dart';

abstract class OnboardingDataSource {
  factory OnboardingDataSource() => gi<OnboardingDataSource>();

  Future<TResult<SearchSchoolsResponse>> searchSchools(
    SearchSchoolsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetStudentClassesResponse>> getStudentClasses(
    GetStudentClassesArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetStudentTeacherIdResponse>> getStudentTeacherId(
    GetStudentTeacherIdArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTeacherSchoolInfoResponse>> getTeacherSchoolInfo(
      {UserId? authenticatedUserId});
  Future<TResult<CreateTeacherResponse>> createTeacher(
      {UserId? authenticatedUserId});
  Future<TResult<JoinClassResponse>> joinClass(
    JoinClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<CreateSchoolStudentResponse>> createSchoolStudent(
      {UserId? authenticatedUserId});
  Future<TResult<DeleteSchoolResponse>> deleteSchool(
    DeleteSchoolArgs args, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: OnboardingDataSource)
class OnboardingDataSourceImpl
    with GraphQLDataSourceMixin
    implements OnboardingDataSource {
  OnboardingDataSourceImpl({required this.client});

  @override
  final GraphQLClient client;

  @override
  Future<TResult<SearchSchoolsResponse>> searchSchools(
    SearchSchoolsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$SearchSchools(
              Options$Query$SearchSchools(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(SearchSchoolsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetStudentClassesResponse>> getStudentClasses(
    GetStudentClassesArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetStudentClasses(
              Options$Query$GetStudentClasses(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetStudentClassesResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetStudentTeacherIdResponse>> getStudentTeacherId(
    GetStudentTeacherIdArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetStudentTeacherId(
              Options$Query$GetStudentTeacherId(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetStudentTeacherIdResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetTeacherSchoolInfoResponse>> getTeacherSchoolInfo(
          {UserId? authenticatedUserId}) =>
      authorizedClient(authenticatedUserId)
          .query$GetTeacherSchoolInfo(Options$Query$GetTeacherSchoolInfo())
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTeacherSchoolInfoResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<CreateTeacherResponse>> createTeacher(
          {UserId? authenticatedUserId}) =>
      authorizedClient(authenticatedUserId)
          .mutate$CreateTeacher(Options$Mutation$CreateTeacher())
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(CreateTeacherResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<JoinClassResponse>> joinClass(
    JoinClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$JoinClass(Options$Mutation$JoinClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(JoinClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<CreateSchoolStudentResponse>> createSchoolStudent(
          {UserId? authenticatedUserId}) =>
      authorizedClient(authenticatedUserId)
          .mutate$CreateSchoolStudent(Options$Mutation$CreateSchoolStudent())
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(CreateSchoolStudentResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<DeleteSchoolResponse>> deleteSchool(
    DeleteSchoolArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$DeleteSchool(
              Options$Mutation$DeleteSchool(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(DeleteSchoolResponse.fromGen(r.parsedData!)));
}

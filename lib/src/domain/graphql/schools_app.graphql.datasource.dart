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
import 'package:schools_app/src/domain/graphql/schools_app.graphql.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.sanitized.dart';

abstract class SchoolsAppDataSource {
  factory SchoolsAppDataSource() => gi<SchoolsAppDataSource>();

  Future<TResult<GetClassNameAndYearResponse>> getClassNameAndYear(
    GetClassNameAndYearArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassNameResponse>> getClassName(
    GetClassNameArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetYearTitlesResponse>> getYearTitles(
    GetYearTitlesArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassStudentSettingsResponse>> getClassStudentSettings(
    GetClassStudentSettingsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetRegionsResponse>> getRegions(
    GetRegionsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassesResponse>> getClasses({UserId? authenticatedUserId});
  Future<TResult<GetNewClassResponse>> getNewClass(
    GetNewClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassItemInfoResponse>> getClassItemInfo(
    GetClassItemInfoArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetUserRolesResponse>> getUserRoles(
      {UserId? authenticatedUserId});
  Future<TResult<GetStudentsResponse>> getStudents(
    GetStudentsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetUpcomingAssessmentsResponse>> getUpcomingAssessments(
    GetUpcomingAssessmentsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetActiveTestForStudentResponse>> getActiveTestForStudent(
    GetActiveTestForStudentArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UpdateClassResponse>> updateClass(
    UpdateClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<RemoveStudentFromClassResponse>> removeStudentFromClass(
    RemoveStudentFromClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DeleteClassResponse>> deleteClass(
    DeleteClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<CreateSchoolResponse>> createSchool(
    CreateSchoolArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AddClassResponse>> addClass(
    AddClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<StartStudentAssessmentResponse>> startStudentAssessment(
    StartStudentAssessmentArgs args, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: SchoolsAppDataSource)
class SchoolsAppDataSourceImpl
    with GraphQLDataSourceMixin
    implements SchoolsAppDataSource {
  SchoolsAppDataSourceImpl({required this.client});

  @override
  final GraphQLClient client;

  @override
  Future<TResult<GetClassNameAndYearResponse>> getClassNameAndYear(
    GetClassNameAndYearArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetClassNameAndYear(
              Options$Query$GetClassNameAndYear(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetClassNameAndYearResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetClassNameResponse>> getClassName(
    GetClassNameArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetClassName(
              Options$Query$GetClassName(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetClassNameResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetYearTitlesResponse>> getYearTitles(
    GetYearTitlesArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetYearTitles(Options$Query$GetYearTitles(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetYearTitlesResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetClassStudentSettingsResponse>> getClassStudentSettings(
    GetClassStudentSettingsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetClassStudentSettings(
              Options$Query$GetClassStudentSettings(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetClassStudentSettingsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetRegionsResponse>> getRegions(
    GetRegionsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetRegions(Options$Query$GetRegions(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetRegionsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetClassesResponse>> getClasses(
          {UserId? authenticatedUserId}) =>
      authorizedClient(authenticatedUserId)
          .query$GetClasses(Options$Query$GetClasses())
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetClassesResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetNewClassResponse>> getNewClass(
    GetNewClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetNewClass(Options$Query$GetNewClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetNewClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetClassItemInfoResponse>> getClassItemInfo(
    GetClassItemInfoArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetClassItemInfo(
              Options$Query$GetClassItemInfo(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetClassItemInfoResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetUserRolesResponse>> getUserRoles(
          {UserId? authenticatedUserId}) =>
      authorizedClient(authenticatedUserId)
          .query$GetUserRoles(
              Options$Query$GetUserRoles(fetchPolicy: FetchPolicy.cacheFirst))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetUserRolesResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetStudentsResponse>> getStudents(
    GetStudentsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetStudents(Options$Query$GetStudents(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetStudentsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetUpcomingAssessmentsResponse>> getUpcomingAssessments(
    GetUpcomingAssessmentsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetUpcomingAssessments(
              Options$Query$GetUpcomingAssessments(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetUpcomingAssessmentsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetActiveTestForStudentResponse>> getActiveTestForStudent(
    GetActiveTestForStudentArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetActiveTestForStudent(
              Options$Query$GetActiveTestForStudent(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetActiveTestForStudentResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<UpdateClassResponse>> updateClass(
    UpdateClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$UpdateClass(
              Options$Mutation$UpdateClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(UpdateClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<RemoveStudentFromClassResponse>> removeStudentFromClass(
    RemoveStudentFromClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$RemoveStudentFromClass(
              Options$Mutation$RemoveStudentFromClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(RemoveStudentFromClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<DeleteClassResponse>> deleteClass(
    DeleteClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$DeleteClass(
              Options$Mutation$DeleteClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(DeleteClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<CreateSchoolResponse>> createSchool(
    CreateSchoolArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$CreateSchool(
              Options$Mutation$CreateSchool(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(CreateSchoolResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<AddClassResponse>> addClass(
    AddClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$AddClass(Options$Mutation$AddClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(AddClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<StartStudentAssessmentResponse>> startStudentAssessment(
    StartStudentAssessmentArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$StartStudentAssessment(
              Options$Mutation$StartStudentAssessment(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(StartStudentAssessmentResponse.fromGen(r.parsedData!)));
}

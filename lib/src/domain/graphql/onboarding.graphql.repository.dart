// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

import 'package:core/di.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:injectable/injectable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/onboarding.graphql.datasource.dart';
import 'package:schools_app/src/domain/graphql/onboarding.graphql.sanitized.dart';

abstract class OnboardingRepository {
  factory OnboardingRepository() => gi<OnboardingRepository>();

  Future<TResult<SearchSchoolsResponse>> searchSchools(
    String query,
    String regionId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetStudentClassesResponse>> getStudentClasses(
    String studentId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetStudentTeacherIdResponse>> getStudentTeacherId(
    String studentId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTeacherSchoolInfoResponse>> getTeacherSchoolInfo(
      {UserId? authenticatedUserId});
  Future<TResult<CreateTeacherResponse>> createTeacher(
      {UserId? authenticatedUserId});
  Future<TResult<JoinClassResponse>> joinClass(
    JoinClassInput input, {
    UserId? authenticatedUserId,
  });
  Future<TResult<CreateSchoolStudentResponse>> createSchoolStudent(
      {UserId? authenticatedUserId});
  Future<TResult<DeleteSchoolResponse>> deleteSchool(
    String id, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  OnboardingRepositoryImpl({required this.dataSource});

  final OnboardingDataSource dataSource;

  @override
  Future<TResult<SearchSchoolsResponse>> searchSchools(
    String query,
    String regionId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.searchSchools(
        SearchSchoolsArgs(
          query: query,
          regionId: regionId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetStudentClassesResponse>> getStudentClasses(
    String studentId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getStudentClasses(
        GetStudentClassesArgs(studentId: studentId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetStudentTeacherIdResponse>> getStudentTeacherId(
    String studentId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getStudentTeacherId(
        GetStudentTeacherIdArgs(studentId: studentId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetTeacherSchoolInfoResponse>> getTeacherSchoolInfo(
          {UserId? authenticatedUserId}) =>
      dataSource.getTeacherSchoolInfo(authenticatedUserId: authenticatedUserId);
  @override
  Future<TResult<CreateTeacherResponse>> createTeacher(
          {UserId? authenticatedUserId}) =>
      dataSource.createTeacher(authenticatedUserId: authenticatedUserId);
  @override
  Future<TResult<JoinClassResponse>> joinClass(
    JoinClassInput input, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.joinClass(
        JoinClassArgs(input: input),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<CreateSchoolStudentResponse>> createSchoolStudent(
          {UserId? authenticatedUserId}) =>
      dataSource.createSchoolStudent(authenticatedUserId: authenticatedUserId);
  @override
  Future<TResult<DeleteSchoolResponse>> deleteSchool(
    String id, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.deleteSchool(
        DeleteSchoolArgs(id: id),
        authenticatedUserId: authenticatedUserId,
      );
}

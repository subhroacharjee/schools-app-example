// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

import 'package:core/di.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:injectable/injectable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.datasource.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.sanitized.dart';

abstract class SchoolsAppRepository {
  factory SchoolsAppRepository() => gi<SchoolsAppRepository>();

  Future<TResult<GetClassNameAndYearResponse>> getClassNameAndYear(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassNameResponse>> getClassName(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetYearTitlesResponse>> getYearTitles(
    GetAllOptions? options, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassStudentSettingsResponse>> getClassStudentSettings(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetRegionsResponse>> getRegions(
    GetAllOptions? options, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassesResponse>> getClasses({UserId? authenticatedUserId});
  Future<TResult<GetNewClassResponse>> getNewClass(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetClassItemInfoResponse>> getClassItemInfo(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetUserRolesResponse>> getUserRoles(
      {UserId? authenticatedUserId});
  Future<TResult<GetStudentsResponse>> getStudents(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetUpcomingAssessmentsResponse>> getUpcomingAssessments(
    String studentId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetActiveTestForStudentResponse>> getActiveTestForStudent(
    String studentId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UpdateClassResponse>> updateClass(
    String updateClassId,
    UpdateClassInput input, {
    UserId? authenticatedUserId,
  });
  Future<TResult<RemoveStudentFromClassResponse>> removeStudentFromClass(
    String classId,
    String studentId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DeleteClassResponse>> deleteClass(
    String deleteClassId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<CreateSchoolResponse>> createSchool(
    CreateSchoolInput input, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AddClassResponse>> addClass(
    AddClassInput input, {
    UserId? authenticatedUserId,
  });
  Future<TResult<StartStudentAssessmentResponse>> startStudentAssessment(
    String testId, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: SchoolsAppRepository)
class SchoolsAppRepositoryImpl implements SchoolsAppRepository {
  SchoolsAppRepositoryImpl({required this.dataSource});

  final SchoolsAppDataSource dataSource;

  @override
  Future<TResult<GetClassNameAndYearResponse>> getClassNameAndYear(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getClassNameAndYear(
        GetClassNameAndYearArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetClassNameResponse>> getClassName(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getClassName(
        GetClassNameArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetYearTitlesResponse>> getYearTitles(
    GetAllOptions? options, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getYearTitles(
        GetYearTitlesArgs(options: options),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetClassStudentSettingsResponse>> getClassStudentSettings(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getClassStudentSettings(
        GetClassStudentSettingsArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetRegionsResponse>> getRegions(
    GetAllOptions? options, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getRegions(
        GetRegionsArgs(options: options),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetClassesResponse>> getClasses(
          {UserId? authenticatedUserId}) =>
      dataSource.getClasses(authenticatedUserId: authenticatedUserId);
  @override
  Future<TResult<GetNewClassResponse>> getNewClass(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getNewClass(
        GetNewClassArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetClassItemInfoResponse>> getClassItemInfo(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getClassItemInfo(
        GetClassItemInfoArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetUserRolesResponse>> getUserRoles(
          {UserId? authenticatedUserId}) =>
      dataSource.getUserRoles(authenticatedUserId: authenticatedUserId);
  @override
  Future<TResult<GetStudentsResponse>> getStudents(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getStudents(
        GetStudentsArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetUpcomingAssessmentsResponse>> getUpcomingAssessments(
    String studentId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getUpcomingAssessments(
        GetUpcomingAssessmentsArgs(studentId: studentId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetActiveTestForStudentResponse>> getActiveTestForStudent(
    String studentId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getActiveTestForStudent(
        GetActiveTestForStudentArgs(studentId: studentId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<UpdateClassResponse>> updateClass(
    String updateClassId,
    UpdateClassInput input, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.updateClass(
        UpdateClassArgs(
          updateClassId: updateClassId,
          input: input,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<RemoveStudentFromClassResponse>> removeStudentFromClass(
    String classId,
    String studentId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.removeStudentFromClass(
        RemoveStudentFromClassArgs(
          classId: classId,
          studentId: studentId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<DeleteClassResponse>> deleteClass(
    String deleteClassId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.deleteClass(
        DeleteClassArgs(deleteClassId: deleteClassId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<CreateSchoolResponse>> createSchool(
    CreateSchoolInput input, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.createSchool(
        CreateSchoolArgs(input: input),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<AddClassResponse>> addClass(
    AddClassInput input, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.addClass(
        AddClassArgs(input: input),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<StartStudentAssessmentResponse>> startStudentAssessment(
    String testId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.startStudentAssessment(
        StartStudentAssessmentArgs(testId: testId),
        authenticatedUserId: authenticatedUserId,
      );
}

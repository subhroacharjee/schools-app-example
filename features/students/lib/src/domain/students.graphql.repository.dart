// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

import 'package:core/di.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:injectable/injectable.dart';
import 'package:schema/schema.dart';
import 'package:students/src/domain/students.graphql.datasource.dart';
import 'package:students/src/domain/students.graphql.sanitized.dart';

abstract class StudentsRepository {
  factory StudentsRepository() => gi<StudentsRepository>();

  Future<TResult<ComprehensionForTopicResponse>> comprehensionForTopic(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ComprehensionForSubtopicResponse>> comprehensionForSubtopic(
    String classId,
    String subtopicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ComprehensionResponse>> comprehension(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ClassCodeResponse>> classCode(
    String classId, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: StudentsRepository)
class StudentsRepositoryImpl implements StudentsRepository {
  StudentsRepositoryImpl({required this.dataSource});

  final StudentsDataSource dataSource;

  @override
  Future<TResult<ComprehensionForTopicResponse>> comprehensionForTopic(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.comprehensionForTopic(
        ComprehensionForTopicArgs(
          classId: classId,
          topicId: topicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<ComprehensionForSubtopicResponse>> comprehensionForSubtopic(
    String classId,
    String subtopicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.comprehensionForSubtopic(
        ComprehensionForSubtopicArgs(
          classId: classId,
          subtopicId: subtopicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<ComprehensionResponse>> comprehension(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.comprehension(
        ComprehensionArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<ClassCodeResponse>> classCode(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.classCode(
        ClassCodeArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
}

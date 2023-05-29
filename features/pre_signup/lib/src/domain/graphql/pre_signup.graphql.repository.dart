// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

import 'package:core/di.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:injectable/injectable.dart';
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.datasource.dart';
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.sanitized.dart';
import 'package:schema/schema.dart';

abstract class PreSignupRepository {
  factory PreSignupRepository() => gi<PreSignupRepository>();

  Future<TResult<GetTopicsForYearResponse>> getTopicsForYear(
    String yearId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicYearsResponse>> getTopicYears(
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForYearResponse>> getSubtopicsForYear(
    String yearId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicYearResponse>> getSubtopicYear(
    String subtopicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<SkillsForYearResponse>> skillsForYear(
    String yearId,
    String topicId,
    String subtopicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AllYearsResponse>> allYears({UserId? authenticatedUserId});
  Future<TResult<GetTopicResponse>> getTopic(
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicResponse>> getSubtopic(
    String subtopicId,
    String topicId, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: PreSignupRepository)
class PreSignupRepositoryImpl implements PreSignupRepository {
  PreSignupRepositoryImpl({required this.dataSource});

  final PreSignupDataSource dataSource;

  @override
  Future<TResult<GetTopicsForYearResponse>> getTopicsForYear(
    String yearId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getTopicsForYear(
        GetTopicsForYearArgs(yearId: yearId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetTopicYearsResponse>> getTopicYears(
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getTopicYears(
        GetTopicYearsArgs(topicId: topicId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicsForYearResponse>> getSubtopicsForYear(
    String yearId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopicsForYear(
        GetSubtopicsForYearArgs(
          yearId: yearId,
          topicId: topicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicYearResponse>> getSubtopicYear(
    String subtopicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopicYear(
        GetSubtopicYearArgs(subtopicId: subtopicId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<SkillsForYearResponse>> skillsForYear(
    String yearId,
    String topicId,
    String subtopicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.skillsForYear(
        SkillsForYearArgs(
          yearId: yearId,
          topicId: topicId,
          subtopicId: subtopicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<AllYearsResponse>> allYears({UserId? authenticatedUserId}) =>
      dataSource.allYears(authenticatedUserId: authenticatedUserId);
  @override
  Future<TResult<GetTopicResponse>> getTopic(
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getTopic(
        GetTopicArgs(topicId: topicId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicResponse>> getSubtopic(
    String subtopicId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopic(
        GetSubtopicArgs(
          subtopicId: subtopicId,
          topicId: topicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
}

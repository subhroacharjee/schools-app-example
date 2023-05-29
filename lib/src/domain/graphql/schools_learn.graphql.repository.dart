// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

import 'package:core/di.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:injectable/injectable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.datasource.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.sanitized.dart';

abstract class SchoolsLearnRepository {
  factory SchoolsLearnRepository() => gi<SchoolsLearnRepository>();

  Future<TResult<GetTopicsForClassResponse>> getTopicsForClass(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicsForClassStudentResponse>> getTopicsForClassStudent(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForClassResponse>> getSubtopicsForClass(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForClassStudentResponse>>
      getSubtopicsForClassStudent(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSkillsForClassResponse>> getSkillsForClass(
    String classId,
    String subtopicId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSkillsForClassStudentResponse>> getSkillsForClassStudent(
    String classId,
    String subtopicId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsIconAndTitleForClassResponse>>
      getSubtopicsIconAndTitleForClass(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForStudentResponse>> getSubtopicsForStudent(
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicResponse>> getTopic(
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicProgressResponse>> getTopicProgress(
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicProgressForClassResponse>> getTopicProgressForClass(
    String topicId,
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicResponse>> getSubtopic(
    String subtopicId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicStateResponse>> getSubtopicState(
    String subtopicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicStateForClassResponse>> getSubtopicStateForClass(
    String subtopicId,
    String stateForClassId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicProgressResponse>> getSubtopicProgress(
    String subtopicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicProgressForClassResponse>>
      getSubtopicProgressForClass(
    String subtopicId,
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<TeachSkillForClassResponse>> teachSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UnteachSkillForClassResponse>> unteachSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<FlagSkillForClassResponse>> flagSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UnflagSkillForClassResponse>> unflagSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<SetSubtopicStateForClassResponse>> setSubtopicStateForClass(
    String classId,
    String subtopicId,
    SubtopicState state, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: SchoolsLearnRepository)
class SchoolsLearnRepositoryImpl implements SchoolsLearnRepository {
  SchoolsLearnRepositoryImpl({required this.dataSource});

  final SchoolsLearnDataSource dataSource;

  @override
  Future<TResult<GetTopicsForClassResponse>> getTopicsForClass(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getTopicsForClass(
        GetTopicsForClassArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetTopicsForClassStudentResponse>> getTopicsForClassStudent(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getTopicsForClassStudent(
        GetTopicsForClassStudentArgs(classId: classId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicsForClassResponse>> getSubtopicsForClass(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopicsForClass(
        GetSubtopicsForClassArgs(
          classId: classId,
          topicId: topicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicsForClassStudentResponse>>
      getSubtopicsForClassStudent(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.getSubtopicsForClassStudent(
            GetSubtopicsForClassStudentArgs(
              classId: classId,
              topicId: topicId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<GetSkillsForClassResponse>> getSkillsForClass(
    String classId,
    String subtopicId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSkillsForClass(
        GetSkillsForClassArgs(
          classId: classId,
          subtopicId: subtopicId,
          topicId: topicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSkillsForClassStudentResponse>> getSkillsForClassStudent(
    String classId,
    String subtopicId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSkillsForClassStudent(
        GetSkillsForClassStudentArgs(
          classId: classId,
          subtopicId: subtopicId,
          topicId: topicId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicsIconAndTitleForClassResponse>>
      getSubtopicsIconAndTitleForClass(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.getSubtopicsIconAndTitleForClass(
            GetSubtopicsIconAndTitleForClassArgs(
              classId: classId,
              topicId: topicId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<GetSubtopicsForStudentResponse>> getSubtopicsForStudent(
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopicsForStudent(
        GetSubtopicsForStudentArgs(topicId: topicId),
        authenticatedUserId: authenticatedUserId,
      );
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
  Future<TResult<GetTopicProgressResponse>> getTopicProgress(
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getTopicProgress(
        GetTopicProgressArgs(topicId: topicId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetTopicProgressForClassResponse>> getTopicProgressForClass(
    String topicId,
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getTopicProgressForClass(
        GetTopicProgressForClassArgs(
          topicId: topicId,
          classId: classId,
        ),
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
  @override
  Future<TResult<GetSubtopicStateResponse>> getSubtopicState(
    String subtopicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopicState(
        GetSubtopicStateArgs(subtopicId: subtopicId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicStateForClassResponse>> getSubtopicStateForClass(
    String subtopicId,
    String stateForClassId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopicStateForClass(
        GetSubtopicStateForClassArgs(
          subtopicId: subtopicId,
          stateForClassId: stateForClassId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicProgressResponse>> getSubtopicProgress(
    String subtopicId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getSubtopicProgress(
        GetSubtopicProgressArgs(subtopicId: subtopicId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetSubtopicProgressForClassResponse>>
      getSubtopicProgressForClass(
    String subtopicId,
    String classId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.getSubtopicProgressForClass(
            GetSubtopicProgressForClassArgs(
              subtopicId: subtopicId,
              classId: classId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<TeachSkillForClassResponse>> teachSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.teachSkillForClass(
        TeachSkillForClassArgs(
          classId: classId,
          skillId: skillId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<UnteachSkillForClassResponse>> unteachSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.unteachSkillForClass(
        UnteachSkillForClassArgs(
          classId: classId,
          skillId: skillId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<FlagSkillForClassResponse>> flagSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.flagSkillForClass(
        FlagSkillForClassArgs(
          classId: classId,
          skillId: skillId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<UnflagSkillForClassResponse>> unflagSkillForClass(
    String classId,
    String skillId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.unflagSkillForClass(
        UnflagSkillForClassArgs(
          classId: classId,
          skillId: skillId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<SetSubtopicStateForClassResponse>> setSubtopicStateForClass(
    String classId,
    String subtopicId,
    SubtopicState state, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.setSubtopicStateForClass(
        SetSubtopicStateForClassArgs(
          classId: classId,
          subtopicId: subtopicId,
          state: state,
        ),
        authenticatedUserId: authenticatedUserId,
      );
}

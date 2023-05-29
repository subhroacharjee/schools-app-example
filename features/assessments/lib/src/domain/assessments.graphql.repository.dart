// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

import 'package:assessments/src/domain/assessments.graphql.datasource.dart';
import 'package:assessments/src/domain/assessments.graphql.sanitized.dart';
import 'package:core/di.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:injectable/injectable.dart';
import 'package:schema/schema.dart';

abstract class AssessmentsRepository {
  factory AssessmentsRepository() => gi<AssessmentsRepository>();

  Future<TResult<AllAssessmentsResponse>> allAssessments(
    DiagnosticTestSessionInterval interval,
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetAssessmentUpdatesResponse>> getAssessmentUpdates(
    String diagnosticTestSessionId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AllAssessmentsLinkedToTopicResponse>>
      allAssessmentsLinkedToTopic(
    String classId,
    String topicId,
    DiagnosticTestSessionInterval interval, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AllAssessmentsLinkedToSubtopicResponse>>
      allAssessmentsLinkedToSubtopic(
    String classId,
    DiagnosticTestSessionInterval interval,
    String subtopicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionCountsResponse>>
      diagnosticTestSessionCounts(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionCountsForTopicResponse>>
      diagnosticTestSessionCountsForTopic(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionCountsForSubtopicResponse>>
      diagnosticTestSessionCountsForSubtopic(
    String classId,
    String subtopicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicsForClassResponse>> getTopicsForClass(
    String classId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForClassResponse>> getSubtopicsForClass(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionStateResponse>>
      diagnosticTestSessionState(
    String diagnosticTestSessionId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetFinishedDiagnosticTestSessionResponse>>
      getFinishedDiagnosticTestSession(
    String diagnosticTestSessionId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<CreateDiagnosticTestSessionResponse>>
      createDiagnosticTestSession(
    String classId,
    CreateDiagnosticTestSessionInput input, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UpdateDiagnosticTestSessionResponse>>
      updateDiagnosticTestSession(
    String sessionId,
    UpdateDiagnosticTestSessionInput input, {
    UserId? authenticatedUserId,
  });
  Future<TResult<StartDiagnosticTestSessionResponse>>
      startDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<PauseDiagnosticTestSessionResponse>>
      pauseDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ResumeDiagnosticTestSessionResponse>>
      resumeDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<FinishDiagnosticTestSessionResponse>>
      finishDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  });
  Future<TResult<RemoveDiagnosticTestSessionResponse>>
      removeDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: AssessmentsRepository)
class AssessmentsRepositoryImpl implements AssessmentsRepository {
  AssessmentsRepositoryImpl({required this.dataSource});

  final AssessmentsDataSource dataSource;

  @override
  Future<TResult<AllAssessmentsResponse>> allAssessments(
    DiagnosticTestSessionInterval interval,
    String classId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.allAssessments(
        AllAssessmentsArgs(
          interval: interval,
          classId: classId,
        ),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<GetAssessmentUpdatesResponse>> getAssessmentUpdates(
    String diagnosticTestSessionId, {
    UserId? authenticatedUserId,
  }) =>
      dataSource.getAssessmentUpdates(
        GetAssessmentUpdatesArgs(
            diagnosticTestSessionId: diagnosticTestSessionId),
        authenticatedUserId: authenticatedUserId,
      );
  @override
  Future<TResult<AllAssessmentsLinkedToTopicResponse>>
      allAssessmentsLinkedToTopic(
    String classId,
    String topicId,
    DiagnosticTestSessionInterval interval, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.allAssessmentsLinkedToTopic(
            AllAssessmentsLinkedToTopicArgs(
              classId: classId,
              topicId: topicId,
              interval: interval,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<AllAssessmentsLinkedToSubtopicResponse>>
      allAssessmentsLinkedToSubtopic(
    String classId,
    DiagnosticTestSessionInterval interval,
    String subtopicId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.allAssessmentsLinkedToSubtopic(
            AllAssessmentsLinkedToSubtopicArgs(
              classId: classId,
              interval: interval,
              subtopicId: subtopicId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<DiagnosticTestSessionCountsResponse>>
      diagnosticTestSessionCounts(
    String classId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.diagnosticTestSessionCounts(
            DiagnosticTestSessionCountsArgs(classId: classId),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<DiagnosticTestSessionCountsForTopicResponse>>
      diagnosticTestSessionCountsForTopic(
    String classId,
    String topicId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.diagnosticTestSessionCountsForTopic(
            DiagnosticTestSessionCountsForTopicArgs(
              classId: classId,
              topicId: topicId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<DiagnosticTestSessionCountsForSubtopicResponse>>
      diagnosticTestSessionCountsForSubtopic(
    String classId,
    String subtopicId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.diagnosticTestSessionCountsForSubtopic(
            DiagnosticTestSessionCountsForSubtopicArgs(
              classId: classId,
              subtopicId: subtopicId,
            ),
            authenticatedUserId: authenticatedUserId,
          );
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
  Future<TResult<DiagnosticTestSessionStateResponse>>
      diagnosticTestSessionState(
    String diagnosticTestSessionId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.diagnosticTestSessionState(
            DiagnosticTestSessionStateArgs(
                diagnosticTestSessionId: diagnosticTestSessionId),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<GetFinishedDiagnosticTestSessionResponse>>
      getFinishedDiagnosticTestSession(
    String diagnosticTestSessionId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.getFinishedDiagnosticTestSession(
            GetFinishedDiagnosticTestSessionArgs(
                diagnosticTestSessionId: diagnosticTestSessionId),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<CreateDiagnosticTestSessionResponse>>
      createDiagnosticTestSession(
    String classId,
    CreateDiagnosticTestSessionInput input, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.createDiagnosticTestSession(
            CreateDiagnosticTestSessionArgs(
              classId: classId,
              input: input,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<UpdateDiagnosticTestSessionResponse>>
      updateDiagnosticTestSession(
    String sessionId,
    UpdateDiagnosticTestSessionInput input, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.updateDiagnosticTestSession(
            UpdateDiagnosticTestSessionArgs(
              sessionId: sessionId,
              input: input,
            ),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<StartDiagnosticTestSessionResponse>>
      startDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.startDiagnosticTestSession(
            StartDiagnosticTestSessionArgs(testId: testId),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<PauseDiagnosticTestSessionResponse>>
      pauseDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.pauseDiagnosticTestSession(
            PauseDiagnosticTestSessionArgs(testId: testId),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<ResumeDiagnosticTestSessionResponse>>
      resumeDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.resumeDiagnosticTestSession(
            ResumeDiagnosticTestSessionArgs(testId: testId),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<FinishDiagnosticTestSessionResponse>>
      finishDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.finishDiagnosticTestSession(
            FinishDiagnosticTestSessionArgs(testId: testId),
            authenticatedUserId: authenticatedUserId,
          );
  @override
  Future<TResult<RemoveDiagnosticTestSessionResponse>>
      removeDiagnosticTestSession(
    String testId, {
    UserId? authenticatedUserId,
  }) =>
          dataSource.removeDiagnosticTestSession(
            RemoveDiagnosticTestSessionArgs(testId: testId),
            authenticatedUserId: authenticatedUserId,
          );
}

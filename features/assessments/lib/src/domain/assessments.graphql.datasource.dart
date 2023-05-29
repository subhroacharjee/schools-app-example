// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// DataSourceGenerator
// **************************************************************************

import 'package:assessments/src/domain/assessments.graphql.dart';
import 'package:assessments/src/domain/assessments.graphql.sanitized.dart';
import 'package:core/di.dart';
import 'package:core/domain/errors/graphql_error.dart';
import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:core/utils/graphql_datasource_mixin.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';

abstract class AssessmentsDataSource {
  factory AssessmentsDataSource() => gi<AssessmentsDataSource>();

  Future<TResult<AllAssessmentsResponse>> allAssessments(
    AllAssessmentsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetAssessmentUpdatesResponse>> getAssessmentUpdates(
    GetAssessmentUpdatesArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AllAssessmentsLinkedToTopicResponse>>
      allAssessmentsLinkedToTopic(
    AllAssessmentsLinkedToTopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<AllAssessmentsLinkedToSubtopicResponse>>
      allAssessmentsLinkedToSubtopic(
    AllAssessmentsLinkedToSubtopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionCountsResponse>>
      diagnosticTestSessionCounts(
    DiagnosticTestSessionCountsArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionCountsForTopicResponse>>
      diagnosticTestSessionCountsForTopic(
    DiagnosticTestSessionCountsForTopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionCountsForSubtopicResponse>>
      diagnosticTestSessionCountsForSubtopic(
    DiagnosticTestSessionCountsForSubtopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicsForClassResponse>> getTopicsForClass(
    GetTopicsForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForClassResponse>> getSubtopicsForClass(
    GetSubtopicsForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<DiagnosticTestSessionStateResponse>>
      diagnosticTestSessionState(
    DiagnosticTestSessionStateArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetFinishedDiagnosticTestSessionResponse>>
      getFinishedDiagnosticTestSession(
    GetFinishedDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<CreateDiagnosticTestSessionResponse>>
      createDiagnosticTestSession(
    CreateDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UpdateDiagnosticTestSessionResponse>>
      updateDiagnosticTestSession(
    UpdateDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<StartDiagnosticTestSessionResponse>>
      startDiagnosticTestSession(
    StartDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<PauseDiagnosticTestSessionResponse>>
      pauseDiagnosticTestSession(
    PauseDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<ResumeDiagnosticTestSessionResponse>>
      resumeDiagnosticTestSession(
    ResumeDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<FinishDiagnosticTestSessionResponse>>
      finishDiagnosticTestSession(
    FinishDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<RemoveDiagnosticTestSessionResponse>>
      removeDiagnosticTestSession(
    RemoveDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: AssessmentsDataSource)
class AssessmentsDataSourceImpl
    with GraphQLDataSourceMixin
    implements AssessmentsDataSource {
  AssessmentsDataSourceImpl({required this.client});

  @override
  final GraphQLClient client;

  @override
  Future<TResult<AllAssessmentsResponse>> allAssessments(
    AllAssessmentsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$AllAssessments(
              Options$Query$AllAssessments(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(AllAssessmentsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetAssessmentUpdatesResponse>> getAssessmentUpdates(
    GetAssessmentUpdatesArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetAssessmentUpdates(
              Options$Query$GetAssessmentUpdates(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetAssessmentUpdatesResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<AllAssessmentsLinkedToTopicResponse>> allAssessmentsLinkedToTopic(
    AllAssessmentsLinkedToTopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$AllAssessmentsLinkedToTopic(
              Options$Query$AllAssessmentsLinkedToTopic(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(AllAssessmentsLinkedToTopicResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<AllAssessmentsLinkedToSubtopicResponse>>
      allAssessmentsLinkedToSubtopic(
    AllAssessmentsLinkedToSubtopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .query$AllAssessmentsLinkedToSubtopic(
                  Options$Query$AllAssessmentsLinkedToSubtopic(
                      variables: args.toGen()))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(AllAssessmentsLinkedToSubtopicResponse.fromGen(
                      r.parsedData!)));
  @override
  Future<
      TResult<DiagnosticTestSessionCountsResponse>> diagnosticTestSessionCounts(
    DiagnosticTestSessionCountsArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$DiagnosticTestSessionCounts(
              Options$Query$DiagnosticTestSessionCounts(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(DiagnosticTestSessionCountsResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<DiagnosticTestSessionCountsForTopicResponse>>
      diagnosticTestSessionCountsForTopic(
    DiagnosticTestSessionCountsForTopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .query$DiagnosticTestSessionCountsForTopic(
                  Options$Query$DiagnosticTestSessionCountsForTopic(
                      variables: args.toGen()))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(DiagnosticTestSessionCountsForTopicResponse.fromGen(
                      r.parsedData!)));
  @override
  Future<TResult<DiagnosticTestSessionCountsForSubtopicResponse>>
      diagnosticTestSessionCountsForSubtopic(
    DiagnosticTestSessionCountsForSubtopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .query$DiagnosticTestSessionCountsForSubtopic(
                  Options$Query$DiagnosticTestSessionCountsForSubtopic(
                      variables: args.toGen()))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(DiagnosticTestSessionCountsForSubtopicResponse.fromGen(
                      r.parsedData!)));
  @override
  Future<TResult<GetTopicsForClassResponse>> getTopicsForClass(
    GetTopicsForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopicsForClass(
              Options$Query$GetTopicsForClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicsForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicsForClassResponse>> getSubtopicsForClass(
    GetSubtopicsForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicsForClass(
              Options$Query$GetSubtopicsForClass(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicsForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<DiagnosticTestSessionStateResponse>> diagnosticTestSessionState(
    DiagnosticTestSessionStateArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$DiagnosticTestSessionState(
              Options$Query$DiagnosticTestSessionState(variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(DiagnosticTestSessionStateResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetFinishedDiagnosticTestSessionResponse>>
      getFinishedDiagnosticTestSession(
    GetFinishedDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .query$GetFinishedDiagnosticTestSession(
                  Options$Query$GetFinishedDiagnosticTestSession(
                      variables: args.toGen()))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(GetFinishedDiagnosticTestSessionResponse.fromGen(
                      r.parsedData!)));
  @override
  Future<
      TResult<CreateDiagnosticTestSessionResponse>> createDiagnosticTestSession(
    CreateDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$CreateDiagnosticTestSession(
              Options$Mutation$CreateDiagnosticTestSession(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(CreateDiagnosticTestSessionResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<UpdateDiagnosticTestSessionResponse>> updateDiagnosticTestSession(
    UpdateDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$UpdateDiagnosticTestSession(
              Options$Mutation$UpdateDiagnosticTestSession(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(UpdateDiagnosticTestSessionResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<StartDiagnosticTestSessionResponse>> startDiagnosticTestSession(
    StartDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$StartDiagnosticTestSession(
              Options$Mutation$StartDiagnosticTestSession(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(StartDiagnosticTestSessionResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<PauseDiagnosticTestSessionResponse>> pauseDiagnosticTestSession(
    PauseDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$PauseDiagnosticTestSession(
              Options$Mutation$PauseDiagnosticTestSession(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(PauseDiagnosticTestSessionResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<ResumeDiagnosticTestSessionResponse>> resumeDiagnosticTestSession(
    ResumeDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$ResumeDiagnosticTestSession(
              Options$Mutation$ResumeDiagnosticTestSession(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(ResumeDiagnosticTestSessionResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<FinishDiagnosticTestSessionResponse>> finishDiagnosticTestSession(
    FinishDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$FinishDiagnosticTestSession(
              Options$Mutation$FinishDiagnosticTestSession(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(FinishDiagnosticTestSessionResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<RemoveDiagnosticTestSessionResponse>> removeDiagnosticTestSession(
    RemoveDiagnosticTestSessionArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$RemoveDiagnosticTestSession(
              Options$Mutation$RemoveDiagnosticTestSession(
                  variables: args.toGen()))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(RemoveDiagnosticTestSessionResponse.fromGen(r.parsedData!)));
}

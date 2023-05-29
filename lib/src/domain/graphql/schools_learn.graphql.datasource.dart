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
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.sanitized.dart';

abstract class SchoolsLearnDataSource {
  factory SchoolsLearnDataSource() => gi<SchoolsLearnDataSource>();

  Future<TResult<GetTopicsForClassResponse>> getTopicsForClass(
    GetTopicsForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicsForClassStudentResponse>> getTopicsForClassStudent(
    GetTopicsForClassStudentArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForClassResponse>> getSubtopicsForClass(
    GetSubtopicsForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForClassStudentResponse>>
      getSubtopicsForClassStudent(
    GetSubtopicsForClassStudentArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSkillsForClassResponse>> getSkillsForClass(
    GetSkillsForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSkillsForClassStudentResponse>> getSkillsForClassStudent(
    GetSkillsForClassStudentArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsIconAndTitleForClassResponse>>
      getSubtopicsIconAndTitleForClass(
    GetSubtopicsIconAndTitleForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicsForStudentResponse>> getSubtopicsForStudent(
    GetSubtopicsForStudentArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicResponse>> getTopic(
    GetTopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicProgressResponse>> getTopicProgress(
    GetTopicProgressArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetTopicProgressForClassResponse>> getTopicProgressForClass(
    GetTopicProgressForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicResponse>> getSubtopic(
    GetSubtopicArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicStateResponse>> getSubtopicState(
    GetSubtopicStateArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicStateForClassResponse>> getSubtopicStateForClass(
    GetSubtopicStateForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicProgressResponse>> getSubtopicProgress(
    GetSubtopicProgressArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<GetSubtopicProgressForClassResponse>>
      getSubtopicProgressForClass(
    GetSubtopicProgressForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<TeachSkillForClassResponse>> teachSkillForClass(
    TeachSkillForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UnteachSkillForClassResponse>> unteachSkillForClass(
    UnteachSkillForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<FlagSkillForClassResponse>> flagSkillForClass(
    FlagSkillForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<UnflagSkillForClassResponse>> unflagSkillForClass(
    UnflagSkillForClassArgs args, {
    UserId? authenticatedUserId,
  });
  Future<TResult<SetSubtopicStateForClassResponse>> setSubtopicStateForClass(
    SetSubtopicStateForClassArgs args, {
    UserId? authenticatedUserId,
  });
}

@Injectable(as: SchoolsLearnDataSource)
class SchoolsLearnDataSourceImpl
    with GraphQLDataSourceMixin
    implements SchoolsLearnDataSource {
  SchoolsLearnDataSourceImpl({required this.client});

  @override
  final GraphQLClient client;

  @override
  Future<TResult<GetTopicsForClassResponse>> getTopicsForClass(
    GetTopicsForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopicsForClass(Options$Query$GetTopicsForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicsForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetTopicsForClassStudentResponse>> getTopicsForClassStudent(
    GetTopicsForClassStudentArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopicsForClassStudent(
              Options$Query$GetTopicsForClassStudent(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicsForClassStudentResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicsForClassResponse>> getSubtopicsForClass(
    GetSubtopicsForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicsForClass(Options$Query$GetSubtopicsForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicsForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<GetSubtopicsForClassStudentResponse>> getSubtopicsForClassStudent(
    GetSubtopicsForClassStudentArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicsForClassStudent(
              Options$Query$GetSubtopicsForClassStudent(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicsForClassStudentResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSkillsForClassResponse>> getSkillsForClass(
    GetSkillsForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSkillsForClass(Options$Query$GetSkillsForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSkillsForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSkillsForClassStudentResponse>> getSkillsForClassStudent(
    GetSkillsForClassStudentArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSkillsForClassStudent(
              Options$Query$GetSkillsForClassStudent(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSkillsForClassStudentResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicsIconAndTitleForClassResponse>>
      getSubtopicsIconAndTitleForClass(
    GetSubtopicsIconAndTitleForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
          authorizedClient(authenticatedUserId)
              .query$GetSubtopicsIconAndTitleForClass(
                  Options$Query$GetSubtopicsIconAndTitleForClass(
                variables: args.toGen(),
                fetchPolicy: FetchPolicy.cacheFirst,
              ))
              .then((r) => r.hasException
                  ? Err(r.exception!.linkException != null
                      ? GraphQLTError.link(r.exception!.linkException!)
                      : GraphQLTError.operation(r.exception!))
                  : Ok(GetSubtopicsIconAndTitleForClassResponse.fromGen(
                      r.parsedData!)));
  @override
  Future<TResult<GetSubtopicsForStudentResponse>> getSubtopicsForStudent(
    GetSubtopicsForStudentArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicsForStudent(Options$Query$GetSubtopicsForStudent(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicsForStudentResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetTopicResponse>> getTopic(
    GetTopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopic(Options$Query$GetTopic(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetTopicProgressResponse>> getTopicProgress(
    GetTopicProgressArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopicProgress(Options$Query$GetTopicProgress(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicProgressResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetTopicProgressForClassResponse>> getTopicProgressForClass(
    GetTopicProgressForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetTopicProgressForClass(
              Options$Query$GetTopicProgressForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetTopicProgressForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicResponse>> getSubtopic(
    GetSubtopicArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopic(Options$Query$GetSubtopic(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicStateResponse>> getSubtopicState(
    GetSubtopicStateArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicState(Options$Query$GetSubtopicState(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicStateResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicStateForClassResponse>> getSubtopicStateForClass(
    GetSubtopicStateForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicStateForClass(
              Options$Query$GetSubtopicStateForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicStateForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<GetSubtopicProgressResponse>> getSubtopicProgress(
    GetSubtopicProgressArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicProgress(Options$Query$GetSubtopicProgress(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicProgressResponse.fromGen(r.parsedData!)));
  @override
  Future<
      TResult<GetSubtopicProgressForClassResponse>> getSubtopicProgressForClass(
    GetSubtopicProgressForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .query$GetSubtopicProgressForClass(
              Options$Query$GetSubtopicProgressForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.cacheFirst,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(GetSubtopicProgressForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<TeachSkillForClassResponse>> teachSkillForClass(
    TeachSkillForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$TeachSkillForClass(Options$Mutation$TeachSkillForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.networkOnly,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(TeachSkillForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<UnteachSkillForClassResponse>> unteachSkillForClass(
    UnteachSkillForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$UnteachSkillForClass(Options$Mutation$UnteachSkillForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.networkOnly,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(UnteachSkillForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<FlagSkillForClassResponse>> flagSkillForClass(
    FlagSkillForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$FlagSkillForClass(Options$Mutation$FlagSkillForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.networkOnly,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(FlagSkillForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<UnflagSkillForClassResponse>> unflagSkillForClass(
    UnflagSkillForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$UnflagSkillForClass(Options$Mutation$UnflagSkillForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.networkOnly,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(UnflagSkillForClassResponse.fromGen(r.parsedData!)));
  @override
  Future<TResult<SetSubtopicStateForClassResponse>> setSubtopicStateForClass(
    SetSubtopicStateForClassArgs args, {
    UserId? authenticatedUserId,
  }) =>
      authorizedClient(authenticatedUserId)
          .mutate$SetSubtopicStateForClass(
              Options$Mutation$SetSubtopicStateForClass(
            variables: args.toGen(),
            fetchPolicy: FetchPolicy.networkOnly,
          ))
          .then((r) => r.hasException
              ? Err(r.exception!.linkException != null
                  ? GraphQLTError.link(r.exception!.linkException!)
                  : GraphQLTError.operation(r.exception!))
              : Ok(SetSubtopicStateForClassResponse.fromGen(r.parsedData!)));
}

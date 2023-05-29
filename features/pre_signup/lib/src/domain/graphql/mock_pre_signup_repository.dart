import 'dart:math';

import 'package:core/domain/errors/tutero_error.dart';
import 'package:core/domain/usecases/user_id/user_id.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.repository.dart';
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.sanitized.dart';

@Injectable()
class MockPreSignupRepository implements PreSignupRepository {
  final random = Random();
  @override
  Future<TResult<AllYearsResponse>> allYears({UserId? authenticatedUserId}) async {
    return Ok(
      AllYearsResponse(
        allYears: [for (int i = 3; i < 11; i++) Year(id: '$i', title: '$i', $__typename: '')],
        $__typename: '',
      ),
    );
  }

  @override
  Future<TResult<GetSubtopicYearResponse>> getSubtopicYear(
    String subtopicId, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetSubtopicYearResponse(
        yearSubtopic: YearSubtopic(
          years: [
            for (int i = 3; i < 7; i++)
              Year(id: '${random.nextInt(7) + 3}', title: '$i', $__typename: ''),
          ],
          $__typename: '',
          id: '',
        ),
        $__typename: '',
      ),
    );
  }

  @override
  Future<TResult<GetSubtopicsForYearResponse>> getSubtopicsForYear(
    String yearId,
    String topicId, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetSubtopicsForYearResponse(
        sTopic: STopic(
          color: Colors.blue.value.toString(),
          subtopicsForYear: [
            for (int i = 1; i < 7; i++)
              SubtopicsForYear(
                id: '$i',
                title: 'subtopic $i  $yearId',
                icon: '',
                totalSkills: 10,
                $__typename: '',
                years: [],
              ),
          ],
          $__typename: '',
          id: '',
        ),
        $__typename: '',
      ),
    );
  }

  @override
  Future<TResult<GetTopicYearsResponse>> getTopicYears(
    String topicId, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetTopicYearsResponse(
        tTopic: TTopic(
          years: [
            for (int i = 3; i < 7; i++)
              Year(id: '${random.nextInt(7) + 3}', title: '$i', $__typename: ''),
          ],
          $__typename: '',
          id: '',
        ),
        $__typename: '',
      ),
    );
  }

  @override
  Future<TResult<GetTopicsForYearResponse>> getTopicsForYear(
    String yearId, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      GetTopicsForYearResponse(
        allTopic: AllTopic(
          topics: [
            for (int i = 1; i < 7; i++)
              Topics(
                id: '$i',
                title: 'topic  $i  $yearId',
                color: Colors.blue.value.toString(),
                emoji: '⚽️',
                $__typename: '',
              ),
          ],
          $__typename: '',
          id: '',
        ),
        $__typename: '',
      ),
    );
  }

  @override
  Future<TResult<SkillsForYearResponse>> skillsForYear(
    String yearId,
    String topicId,
    String subtopicId, {
    UserId? authenticatedUserId,
  }) async {
    return Ok(
      SkillsForYearResponse(
        skSubtopic: SkSubtopic(
          skillsForYear: [
            for (int i = 1; i < 7; i++)
              SkillsForYear(
                id: '$i',
                title: 'skills  $i  $yearId',
                headerTextForYear: ['first', 'second'],
                $__typename: '',
                years: [],
              ),
          ],
          $__typename: '',
          id: '',
        ),
        $__typename: '',
        yearTopic: YearTopic(
          $__typename: '',
          color: '',
          id: '',
        ),
      ),
    );
  }

  @override
  Future<TResult<GetSubtopicResponse>> getSubtopic(String subtopicId, String topicId,
      {UserId? authenticatedUserId}) {
    // TODO: implement getSubtopic
    throw UnimplementedError();
  }

  @override
  Future<TResult<GetTopicResponse>> getTopic(String topicId, {UserId? authenticatedUserId}) {
    // TODO: implement getTopic
    throw UnimplementedError();
  }

  // @override
  // Future<TResult<GetSkillInfoResponse>> getSkillInfo(
  //     GetAllEdgeOptions? options, String topicId, String subtopicId, String skillId,
  //     {UserId? authenticatedUserId}) {
  //   // TODO: implement getSkillInfo
  //   throw UnimplementedError();
  // }
}

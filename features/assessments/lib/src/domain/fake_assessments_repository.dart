// import 'dart:math';
//
// import 'package:assessments/src/domain/assessment.graphql.sanitized.dart';
// import 'package:core/domain/errors/tutero_error.dart';
// import 'package:core/domain/usecases/user_id/user_id.dart';
// import 'package:injectable/injectable.dart';
// import 'package:oxidized/oxidized.dart';
// import 'package:schema/schema.dart';
//
// import 'assessment.graphql.repository.dart';
//
// // TODO implement graphql repository
// @lazySingleton
// class FakeAssessmentRepository implements AssessmentRepository {
//   FakeAssessmentRepository() {
//     // custom first assessment, to time out fast for testing
//     fakeAssessments['0'] = Assessment(
//       $__typename: '',
//       id: '0',
//       name: 'Assessment 0',
//       assessmentTopic: AssessmentTopic($__typename: '', id: '0', title: 'Topic 0'),
//       subtopics: [
//         Subtopics(
//           $__typename: '',
//           id: '1',
//           title: 'Subtopic 1',
//         ),
//       ],
//       tests: [
//         Tests(
//           $__typename: '',
//           complete: false,
//           student: Student(
//             $__typename: '',
//             id: '1',
//           ),
//         ),
//       ],
//       dueAt: DateTime.now().add(const Duration(seconds: 10)),
//       duration: Duration(minutes: random.nextInt(60)),
//       startAt: DateTime.now().subtract(Duration(minutes: random.nextInt(30))),
//       status: DiagnosticTestSessionStatus.started,
//       timeSaved: Duration(minutes: random.nextInt(30) + 20),
//     );
//
//     // 7 other assessments with random start and end times
//     for (int i = 1; i < 8; i++) {
//       fakeAssessments[i.toString()] = Assessment(
//         $__typename: '',
//         id: i.toString(),
//         name: 'Assessment $i',
//         assessmentTopic: AssessmentTopic($__typename: '', id: '$i', title: 'Topic $i'),
//         subtopics: [
//           Subtopics(
//             $__typename: '',
//             id: '1',
//             title: 'Subtopic 1',
//           ),
//         ],
//         tests: [
//           Tests(
//             $__typename: '',
//             complete: false,
//             student: Student(
//               $__typename: '',
//               id: '1',
//             ),
//           ),
//         ],
//         dueAt: DateTime.now().add(
//           Duration(
//             seconds: 15 * (i + 1),
//             minutes: random.nextInt(60) + 30,
//           ),
//         ),
//         duration: Duration(minutes: random.nextInt(60)),
//         startAt: DateTime.now().subtract(Duration(minutes: random.nextInt(30))),
//         status: DiagnosticTestSessionStatus.started,
//         timeSaved: Duration(minutes: random.nextInt(60)),
//       );
//     }
//   }
//   Random random = Random();
//   final fakeAssessments = <String, Assessment>{};
//
//   @override
//   Future<TResult<AllActiveDiagnosticTestLinkedToTeacherResponse>>
//       allActiveDiagnosticTestLinkedToTeacher({UserId? authenticatedUserId}) async {
//     return Ok(
//       AllActiveDiagnosticTestLinkedToTeacherResponse(
//           $__typename: '',
//           activeAssessment: fakeAssessments.values
//               .where((element) => element.status == DiagnosticTestSessionStatus.started)
//               .map(
//                 (a) => ActiveAssessment(
//                   $__typename: '',
//                   id: a.id,
//                   activeAssessmentTopic: ActiveAssessmentTopic(
//                     $__typename: '',
//                     id: a.assessmentTopic.id,
//                     title: a.assessmentTopic.title,
//                   ),
//                   dueAt: a.dueAt,
//                   status: a.status,
//                   timeSaved: a.timeSaved,
//                 ),
//               )
//               .toList()),
//     );
//   }
//
//   @override
//   Future<TResult<AllDiagnosticTestLinkedToTopicResponse>> allDiagnosticTestLinkedToTopic(
//       String classId, String topicId, DiagnosticTestSessionInterval interval,
//       {UserId? authenticatedUserId}) async {
//     return Ok(
//       AllDiagnosticTestLinkedToTopicResponse(
//         $__typename: '',
//         testTopic: TestTopic(
//           assessment: fakeAssessments.values.toList(),
//           $__typename: '',
//         ),
//       ),
//     );
//   }
//
//   @override
//   Future<TResult<DiagnosticTestSessionCountsResponse>> diagnosticTestSessionCounts(
//       String classId, String topicId,
//       {UserId? authenticatedUserId}) async {
//     return Ok(DiagnosticTestSessionCountsResponse(
//       $__typename: '',
//       countTopic: CountTopic(
//         $__typename: '',
//         diagnosticTestSessionCounts: DiagnosticTestSessionCounts(
//           $__typename: '',
//           active: 10,
//           past: 4,
//           upcoming: 3,
//         ),
//       ),
//     ));
//   }
//
//   @override
//   Future<TResult<CreateDiagnosticTestSessionResponse>> createDiagnosticTestSession(
//       CreateDiagnosticTestSessionInput input,
//       {UserId? authenticatedUserId}) {
//     // TODO: implement createDiagnosticTestSession
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<TResult<FinishDiagnosticTestSessionResponse>> finishDiagnosticTestSession(String testId,
//       {UserId? authenticatedUserId}) async {
//     final existing = fakeAssessments[testId]!;
//     final initialCorrect = random.nextDouble();
//     final initialWrong = 1.0 - initialCorrect;
//     final finalCorrect = random.nextDouble();
//     final finalWrong = 1.0 - finalCorrect;
//     fakeAssessments[testId] = existing.copyWith(status: DiagnosticTestSessionStatus.finished);
//     return Ok(
//       FinishDiagnosticTestSessionResponse(
//         $__typename: '',
//         finishDiagnosticTestSession: FinishDiagnosticTestSession(
//           $__typename: '',
//           id: existing.id,
//           initialProgress: InitialProgress(
//             $__typename: '',
//             correct: initialCorrect,
//             wrong: initialWrong,
//           ),
//           finalProgress: FinalProgress(
//             $__typename: '',
//             correct: finalCorrect,
//             wrong: finalWrong,
//           ),
//           timeSaved: existing.timeSaved,
//           finishedAssessmentTopic: FinishedAssessmentTopic(
//             $__typename: '',
//             id: existing.assessmentTopic.id,
//             title: existing.assessmentTopic.title,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Future<TResult<PauseDiagnosticTestSessionResponse>> pauseDiagnosticTestSession(String testId,
//       {UserId? authenticatedUserId}) {
//     // TODO: implement pauseDiagnosticTestSession
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<TResult<ResumeDiagnosticTestSessionResponse>> resumeDiagnosticTestSession(String testId,
//       {UserId? authenticatedUserId}) {
//     // TODO: implement resumeDiagnosticTestSession
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<TResult<StartDiagnosticTestSessionResponse>> startDiagnosticTestSession(String testId,
//       {UserId? authenticatedUserId}) {
//     // TODO: implement startDiagnosticTestSession
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<TResult<UpdateDiagnosticTestSessionResponse>> updateDiagnosticTestSession(
//       String testId, UpdateDiagnosticTestSessionInput input,
//       {UserId? authenticatedUserId}) {
//     // TODO: implement updateDiagnosticTestSession
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<TResult<TopicsForUserResponse>> topicsForUser({UserId? authenticatedUserId}) async {
//     return Ok(TopicsForUserResponse(
//       $__typename: '',
//       user: User(
//         $__typename: '',
//         topicsForUser: [
//           for (var i = 0; i < 4; i++)
//             TopicsForUser(
//               $__typename: '',
//               id: i.toString(),
//               title: 'Topic $i',
//             ),
//         ],
//       ),
//     ));
//   }
//
//   @override
//   Future<TResult<AllSubtopicsLinkedToTopicResponse>> allSubtopicsLinkedToTopic(String topicId,
//       {UserId? authenticatedUserId}) async {
//     return Ok(
//       AllSubtopicsLinkedToTopicResponse(
//         $__typename: '',
//         allSubtopicsLinkedToTopic: AllSubtopicsLinkedToTopic(
//           $__typename: '',
//           subtopicsForUser: [
//             for (var i = 0; i < random.nextInt(5) + 1; i++)
//               SubtopicsForUser(
//                 $__typename: '',
//                 id: i.toString(),
//                 title: 'Subtopic ${random.nextInt(100)}',
//               ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Future<TResult<RemoveDiagnosticTestSessionResponse>> removeDiagnosticTestSession(String testId,
//       {UserId? authenticatedUserId}) async {
//     fakeAssessments.remove(testId);
//     return Ok(
//       RemoveDiagnosticTestSessionResponse(
//         $__typename: '',
//         removeDiagnosticTestSession: RemoveDiagnosticTestSession(
//           $__typename: '',
//           id: testId,
//         ),
//       ),
//     );
//   }
// }

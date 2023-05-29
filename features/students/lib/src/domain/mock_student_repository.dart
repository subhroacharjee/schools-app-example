// import 'dart:math';

// import 'package:core/domain/errors/tutero_error.dart';
// import 'package:core/domain/usecases/user_id/user_id.dart';
// import 'package:injectable/injectable.dart';
// import 'package:oxidized/oxidized.dart';
// import 'package:students/src/domain/entities/student_comprehension.dart';
// import 'package:students/src/domain/students.graphql.repository.dart';
// import 'package:students/src/domain/students.graphql.sanitized.dart';

// // TODO implement graphql repository
// @lazySingleton
// class MockStudentRepository implements StudentsRepository {
//   MockStudentRepository() {
//     List<String> mockIds = [
//       '2u3bUpfldlriPUqaEWPr',
//       '2oWZrrxStw6e40j9j4us',
//       '5UwhYUibKvsTwU95MiYE',
//       'AIWb4LJoxdRMJGimuiU3'
//     ];
//     for (final mockId in mockIds) {
//       final correct = random.nextDouble();
//       final wrong = 1 - correct;
//       mockComprehensions[mockId] = StudentComprehension(
//         studentId: mockId,
//         studentName: 'Student $mockId',
//         correct: correct,
//         wrong: wrong,
//       );
//     }
//   }
//   Random random = Random();
//   final mockComprehensions = <String, StudentComprehension>{};

//   @override
//   Future<TResult<TopicProgressForAllClassStudentsResponse>> topicProgressForAllClassStudents(
//       String classId, String topicId,
//       {UserId? authenticatedUserId}) async {
//     return Ok(
//       TopicProgressForAllClassStudentsResponse(
//         $__typename: '',
//         $class: Class(
//           $__typename: '',
//           students: mockComprehensions.values
//               .map((e) => Students(
//                     $__typename: '',
//                     user: User(
//                       id: e.studentId,
//                       $__typename: '',
//                       topic: Topic(
//                         $__typename: '',
//                         id: topicId,
//                         progress: Progress(
//                           $__typename: '',
//                           correct: e.correct,
//                           wrong: e.wrong,
//                         ),
//                       ),
//                     ),
//                   ))
//               .toList(),
//         ),
//       ),
//     );
//   }

//   @override
//   Future<TResult<ClassCodeResponse>> classCode(String classId,
//       {UserId? authenticatedUserId}) async {
//     return Ok(
//       ClassCodeResponse(
//         $__typename: '',
//         classWithCode: ClassWithCode(
//           $__typename: '',
//           id: classId,
//           code: '1234',
//         ),
//       ),
//     );
//   }
// }

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SanitizerGenerator
// **************************************************************************

import 'package:equatable/equatable.dart';
import 'package:schema/schema.dart';
import 'package:students/src/domain/students.graphql.dart'; // Sanitized Query$ComprehensionForTopic by ResponseClassBuilder

class ComprehensionForTopicResponse with EquatableMixin {
  ComprehensionForTopicResponse({
    required this.topic,
    required this.$__typename,
  });

  factory ComprehensionForTopicResponse.fromGen(
          Query$ComprehensionForTopic gen) =>
      ComprehensionForTopicResponse(
        topic: Topic.fromGen(gen.topic),
        $__typename: gen.$__typename,
      );

  final Topic topic;

  final String $__typename;

  @override
  List<Object?> get props => [
        topic,
        $__typename,
      ];
  ComprehensionForTopicResponse copyWith({Topic? topic}) =>
      ComprehensionForTopicResponse(
        topic: topic ?? this.topic,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Progress by FieldClassBuilder
class Progress with EquatableMixin {
  Progress({
    required this.correct,
    required this.wrong,
    required this.$__typename,
  });

  factory Progress.fromGen(Fragment$Progress gen) => Progress(
        correct: gen.correct,
        wrong: gen.wrong,
        $__typename: gen.$__typename,
      );

  final double correct;

  final double wrong;

  final String $__typename;

  @override
  List<Object?> get props => [
        correct,
        wrong,
        $__typename,
      ];
  Progress copyWith({
    double? correct,
    double? wrong,
  }) =>
      Progress(
        correct: correct ?? this.correct,
        wrong: wrong ?? this.wrong,
        $__typename: $__typename,
      );
}

// Sanitized Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress by FieldClassBuilder
class TopicUsersProgress with EquatableMixin {
  TopicUsersProgress({
    required this.progress,
    required this.userID,
    required this.$__typename,
  });

  factory TopicUsersProgress.fromGen(
          Query$ComprehensionForTopic$topic$topicProgress$topicUsersProgress
              gen) =>
      TopicUsersProgress(
        progress: Progress.fromGen(gen.progress),
        userID: gen.userID,
        $__typename: gen.$__typename,
      );

  final Progress progress;

  final String userID;

  final String $__typename;

  @override
  List<Object?> get props => [
        progress,
        userID,
        $__typename,
      ];
  TopicUsersProgress copyWith({
    Progress? progress,
    String? userID,
  }) =>
      TopicUsersProgress(
        progress: progress ?? this.progress,
        userID: userID ?? this.userID,
        $__typename: $__typename,
      );
}

// Sanitized Query$ComprehensionForTopic$topic$topicProgress by FieldClassBuilder
class TopicProgress with EquatableMixin {
  TopicProgress({
    required this.topicUsersProgress,
    required this.$__typename,
  });

  factory TopicProgress.fromGen(
          Query$ComprehensionForTopic$topic$topicProgress gen) =>
      TopicProgress(
        topicUsersProgress:
            gen.topicUsersProgress.map(TopicUsersProgress.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<TopicUsersProgress> topicUsersProgress;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicUsersProgress,
        $__typename,
      ];
  TopicProgress copyWith({List<TopicUsersProgress>? topicUsersProgress}) =>
      TopicProgress(
        topicUsersProgress: topicUsersProgress ?? this.topicUsersProgress,
        $__typename: $__typename,
      );
}

// Sanitized Query$ComprehensionForTopic$topic by FieldClassBuilder
class Topic with EquatableMixin {
  Topic({
    required this.topicProgress,
    required this.$__typename,
  });

  factory Topic.fromGen(Query$ComprehensionForTopic$topic gen) => Topic(
        topicProgress: TopicProgress.fromGen(gen.topicProgress),
        $__typename: gen.$__typename,
      );

  final TopicProgress topicProgress;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicProgress,
        $__typename,
      ];
  Topic copyWith({TopicProgress? topicProgress}) => Topic(
        topicProgress: topicProgress ?? this.topicProgress,
        $__typename: $__typename,
      );
}

// Sanitized Query$ComprehensionForSubtopic by ResponseClassBuilder
class ComprehensionForSubtopicResponse with EquatableMixin {
  ComprehensionForSubtopicResponse({
    required this.subtopic,
    required this.$__typename,
  });

  factory ComprehensionForSubtopicResponse.fromGen(
          Query$ComprehensionForSubtopic gen) =>
      ComprehensionForSubtopicResponse(
        subtopic: Subtopic.fromGen(gen.subtopic),
        $__typename: gen.$__typename,
      );

  final Subtopic subtopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopic,
        $__typename,
      ];
  ComprehensionForSubtopicResponse copyWith({Subtopic? subtopic}) =>
      ComprehensionForSubtopicResponse(
        subtopic: subtopic ?? this.subtopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress by FieldClassBuilder
class SubtopicUsersProgress with EquatableMixin {
  SubtopicUsersProgress({
    required this.progress,
    required this.userID,
    required this.$__typename,
  });

  factory SubtopicUsersProgress.fromGen(
          Query$ComprehensionForSubtopic$subtopic$progressForClass$subtopicUsersProgress
              gen) =>
      SubtopicUsersProgress(
        progress: Progress.fromGen(gen.progress),
        userID: gen.userID,
        $__typename: gen.$__typename,
      );

  final Progress progress;

  final String userID;

  final String $__typename;

  @override
  List<Object?> get props => [
        progress,
        userID,
        $__typename,
      ];
  SubtopicUsersProgress copyWith({
    Progress? progress,
    String? userID,
  }) =>
      SubtopicUsersProgress(
        progress: progress ?? this.progress,
        userID: userID ?? this.userID,
        $__typename: $__typename,
      );
}

// Sanitized Query$ComprehensionForSubtopic$subtopic$progressForClass by FieldClassBuilder
class ProgressForClass with EquatableMixin {
  ProgressForClass({
    required this.subtopicUsersProgress,
    required this.$__typename,
  });

  factory ProgressForClass.fromGen(
          Query$ComprehensionForSubtopic$subtopic$progressForClass gen) =>
      ProgressForClass(
        subtopicUsersProgress: gen.subtopicUsersProgress
            .map(SubtopicUsersProgress.fromGen)
            .toList(),
        $__typename: gen.$__typename,
      );

  final List<SubtopicUsersProgress> subtopicUsersProgress;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopicUsersProgress,
        $__typename,
      ];
  ProgressForClass copyWith(
          {List<SubtopicUsersProgress>? subtopicUsersProgress}) =>
      ProgressForClass(
        subtopicUsersProgress:
            subtopicUsersProgress ?? this.subtopicUsersProgress,
        $__typename: $__typename,
      );
}

// Sanitized Query$ComprehensionForSubtopic$subtopic by FieldClassBuilder
class Subtopic with EquatableMixin {
  Subtopic({
    required this.progressForClass,
    required this.$__typename,
  });

  factory Subtopic.fromGen(Query$ComprehensionForSubtopic$subtopic gen) =>
      Subtopic(
        progressForClass: ProgressForClass.fromGen(gen.progressForClass),
        $__typename: gen.$__typename,
      );

  final ProgressForClass progressForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        progressForClass,
        $__typename,
      ];
  Subtopic copyWith({ProgressForClass? progressForClass}) => Subtopic(
        progressForClass: progressForClass ?? this.progressForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$Comprehension by ResponseClassBuilder
class ComprehensionResponse with EquatableMixin {
  ComprehensionResponse({
    required this.$class,
    required this.$__typename,
  });

  factory ComprehensionResponse.fromGen(Query$Comprehension gen) =>
      ComprehensionResponse(
        $class: Class.fromGen(gen.$class),
        $__typename: gen.$__typename,
      );

  final Class $class;

  final String $__typename;

  @override
  List<Object?> get props => [
        $class,
        $__typename,
      ];
  ComprehensionResponse copyWith({Class? $class}) => ComprehensionResponse(
        $class: $class ?? this.$class,
        $__typename: $__typename,
      );
}

// Sanitized Query$Comprehension$class$overallComprehension$students by FieldClassBuilder
class Students with EquatableMixin {
  Students({
    required this.studentsComprehension,
    required this.studentID,
    required this.$__typename,
  });

  factory Students.fromGen(
          Query$Comprehension$class$overallComprehension$students gen) =>
      Students(
        studentsComprehension: Progress.fromGen(gen.studentsComprehension),
        studentID: gen.studentID,
        $__typename: gen.$__typename,
      );

  final Progress studentsComprehension;

  final String studentID;

  final String $__typename;

  @override
  List<Object?> get props => [
        studentsComprehension,
        studentID,
        $__typename,
      ];
  Students copyWith({
    Progress? studentsComprehension,
    String? studentID,
  }) =>
      Students(
        studentsComprehension:
            studentsComprehension ?? this.studentsComprehension,
        studentID: studentID ?? this.studentID,
        $__typename: $__typename,
      );
}

// Sanitized Query$Comprehension$class$overallComprehension by FieldClassBuilder
class OverallComprehension with EquatableMixin {
  OverallComprehension({
    required this.overall,
    this.students,
    required this.$__typename,
  });

  factory OverallComprehension.fromGen(
          Query$Comprehension$class$overallComprehension gen) =>
      OverallComprehension(
        overall: Progress.fromGen(gen.overall),
        students: gen.students?.map(Students.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final Progress overall;

  final List<Students>? students;

  final String $__typename;

  @override
  List<Object?> get props => [
        overall,
        students,
        $__typename,
      ];
  OverallComprehension copyWith({
    Progress? overall,
    List<Students>? students,
  }) =>
      OverallComprehension(
        overall: overall ?? this.overall,
        students: students ?? this.students,
        $__typename: $__typename,
      );
}

// Sanitized Query$Comprehension$class by FieldClassBuilder
class Class with EquatableMixin {
  Class({
    required this.overallComprehension,
    required this.$__typename,
  });

  factory Class.fromGen(Query$Comprehension$class gen) => Class(
        overallComprehension:
            OverallComprehension.fromGen(gen.overallComprehension),
        $__typename: gen.$__typename,
      );

  final OverallComprehension overallComprehension;

  final String $__typename;

  @override
  List<Object?> get props => [
        overallComprehension,
        $__typename,
      ];
  Class copyWith({OverallComprehension? overallComprehension}) => Class(
        overallComprehension: overallComprehension ?? this.overallComprehension,
        $__typename: $__typename,
      );
}

// Sanitized Query$ClassCode by ResponseClassBuilder
class ClassCodeResponse with EquatableMixin {
  ClassCodeResponse({
    required this.classWithCode,
    required this.$__typename,
  });

  factory ClassCodeResponse.fromGen(Query$ClassCode gen) => ClassCodeResponse(
        classWithCode: ClassWithCode.fromGen(gen.classWithCode),
        $__typename: gen.$__typename,
      );

  final ClassWithCode classWithCode;

  final String $__typename;

  @override
  List<Object?> get props => [
        classWithCode,
        $__typename,
      ];
  ClassCodeResponse copyWith({ClassWithCode? classWithCode}) =>
      ClassCodeResponse(
        classWithCode: classWithCode ?? this.classWithCode,
        $__typename: $__typename,
      );
}

// Sanitized Query$ClassCode$classWithCode by FieldClassBuilder
class ClassWithCode with EquatableMixin {
  ClassWithCode({
    required this.id,
    required this.code,
    required this.$__typename,
  });

  factory ClassWithCode.fromGen(Query$ClassCode$classWithCode gen) =>
      ClassWithCode(
        id: gen.id,
        code: gen.code,
        $__typename: gen.$__typename,
      );

  final String id;

  final String code;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        code,
        $__typename,
      ];
  ClassWithCode copyWith({
    String? id,
    String? code,
  }) =>
      ClassWithCode(
        id: id ?? this.id,
        code: code ?? this.code,
        $__typename: $__typename,
      );
}

// Sanitized Variables$Query$ComprehensionForTopic by ArgsClassBuilder
class ComprehensionForTopicArgs with EquatableMixin {
  ComprehensionForTopicArgs({
    required this.classId,
    required this.topicId,
  });

  final String classId;

  final String topicId;

  @override
  List<Object?> get props => [
        classId,
        topicId,
      ];
  Variables$Query$ComprehensionForTopic toGen() =>
      Variables$Query$ComprehensionForTopic(
        classId: classId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$ComprehensionForSubtopic by ArgsClassBuilder
class ComprehensionForSubtopicArgs with EquatableMixin {
  ComprehensionForSubtopicArgs({
    required this.classId,
    required this.subtopicId,
  });

  final String classId;

  final String subtopicId;

  @override
  List<Object?> get props => [
        classId,
        subtopicId,
      ];
  Variables$Query$ComprehensionForSubtopic toGen() =>
      Variables$Query$ComprehensionForSubtopic(
        classId: classId,
        subtopicId: subtopicId,
      );
}

// Sanitized Variables$Query$Comprehension by ArgsClassBuilder
class ComprehensionArgs with EquatableMixin {
  ComprehensionArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$Comprehension toGen() =>
      Variables$Query$Comprehension(classId: classId);
}

// Sanitized Variables$Query$ClassCode by ArgsClassBuilder
class ClassCodeArgs with EquatableMixin {
  ClassCodeArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$ClassCode toGen() =>
      Variables$Query$ClassCode(classId: classId);
}

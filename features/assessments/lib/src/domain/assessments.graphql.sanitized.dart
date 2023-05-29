// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SanitizerGenerator
// **************************************************************************

import 'package:assessments/src/domain/assessments.graphql.dart';
import 'package:equatable/equatable.dart';
import 'package:schema/schema.dart'; // Sanitized Query$AllAssessments by ResponseClassBuilder

class AllAssessmentsResponse with EquatableMixin {
  AllAssessmentsResponse({
    required this.allSessionsClass,
    required this.$__typename,
  });

  factory AllAssessmentsResponse.fromGen(Query$AllAssessments gen) =>
      AllAssessmentsResponse(
        allSessionsClass: AllSessionsClass.fromGen(gen.allSessionsClass),
        $__typename: gen.$__typename,
      );

  final AllSessionsClass allSessionsClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        allSessionsClass,
        $__typename,
      ];
  AllAssessmentsResponse copyWith({AllSessionsClass? allSessionsClass}) =>
      AllAssessmentsResponse(
        allSessionsClass: allSessionsClass ?? this.allSessionsClass,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Assessment$tests$student by FieldClassBuilder
class Student with EquatableMixin {
  Student({
    required this.id,
    required this.$__typename,
  });

  factory Student.fromGen(Fragment$Assessment$tests$student gen) => Student(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  Student copyWith({String? id}) => Student(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Assessment$tests by FieldClassBuilder
class Tests with EquatableMixin {
  Tests({
    required this.complete,
    required this.student,
    this.startedAt,
    required this.$__typename,
  });

  factory Tests.fromGen(Fragment$Assessment$tests gen) => Tests(
        complete: gen.complete,
        student: Student.fromGen(gen.student),
        startedAt: gen.startedAt,
        $__typename: gen.$__typename,
      );

  final bool complete;

  final Student student;

  final DateTime? startedAt;

  final String $__typename;

  @override
  List<Object?> get props => [
        complete,
        student,
        startedAt,
        $__typename,
      ];
  Tests copyWith({
    bool? complete,
    Student? student,
    DateTime? startedAt,
  }) =>
      Tests(
        complete: complete ?? this.complete,
        student: student ?? this.student,
        startedAt: startedAt ?? this.startedAt,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Assessment$subtopics by FieldClassBuilder
class Subtopics with EquatableMixin {
  Subtopics({
    required this.id,
    required this.title,
    required this.icon,
    required this.$__typename,
  });

  factory Subtopics.fromGen(Fragment$Assessment$subtopics gen) => Subtopics(
        id: gen.id,
        title: gen.title,
        icon: gen.icon,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String icon;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        icon,
        $__typename,
      ];
  Subtopics copyWith({
    String? id,
    String? title,
    String? icon,
  }) =>
      Subtopics(
        id: id ?? this.id,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Assessment$assessmentTopic by FieldClassBuilder
class AssessmentTopic with EquatableMixin {
  AssessmentTopic({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory AssessmentTopic.fromGen(Fragment$Assessment$assessmentTopic gen) =>
      AssessmentTopic(
        id: gen.id,
        title: gen.title,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        $__typename,
      ];
  AssessmentTopic copyWith({
    String? id,
    String? title,
  }) =>
      AssessmentTopic(
        id: id ?? this.id,
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Assessment by FieldClassBuilder
class Assessment with EquatableMixin {
  Assessment({
    required this.tests,
    required this.duration,
    required this.startAt,
    this.startedAt,
    required this.dueAt,
    required this.expectedDueAt,
    required this.subtopics,
    required this.assessmentTopic,
    required this.id,
    required this.name,
    required this.status,
    required this.timeSaved,
    required this.allSubtopics,
    this.timeTaken,
    required this.$__typename,
  });

  factory Assessment.fromGen(Fragment$Assessment gen) => Assessment(
        tests: gen.tests.map(Tests.fromGen).toList(),
        duration: gen.duration,
        startAt: gen.startAt,
        startedAt: gen.startedAt,
        dueAt: gen.dueAt,
        expectedDueAt: gen.expectedDueAt,
        subtopics: gen.subtopics.map(Subtopics.fromGen).toList(),
        assessmentTopic: AssessmentTopic.fromGen(gen.assessmentTopic),
        id: gen.id,
        name: gen.name,
        status: fromDiagnosticTestSessionStatusGen(gen.status),
        timeSaved: gen.timeSaved,
        allSubtopics: gen.allSubtopics,
        timeTaken: gen.timeTaken,
        $__typename: gen.$__typename,
      );

  final List<Tests> tests;

  final Duration duration;

  final DateTime startAt;

  final DateTime? startedAt;

  final DateTime dueAt;

  final DateTime expectedDueAt;

  final List<Subtopics> subtopics;

  final AssessmentTopic assessmentTopic;

  final String id;

  final String name;

  final DiagnosticTestSessionStatus status;

  final Duration timeSaved;

  final bool allSubtopics;

  final Duration? timeTaken;

  final String $__typename;

  @override
  List<Object?> get props => [
        tests,
        duration,
        startAt,
        startedAt,
        dueAt,
        expectedDueAt,
        subtopics,
        assessmentTopic,
        id,
        name,
        status,
        timeSaved,
        allSubtopics,
        timeTaken,
        $__typename,
      ];
  Assessment copyWith({
    List<Tests>? tests,
    Duration? duration,
    DateTime? startAt,
    DateTime? startedAt,
    DateTime? dueAt,
    DateTime? expectedDueAt,
    List<Subtopics>? subtopics,
    AssessmentTopic? assessmentTopic,
    String? id,
    String? name,
    DiagnosticTestSessionStatus? status,
    Duration? timeSaved,
    bool? allSubtopics,
    Duration? timeTaken,
  }) =>
      Assessment(
        tests: tests ?? this.tests,
        duration: duration ?? this.duration,
        startAt: startAt ?? this.startAt,
        startedAt: startedAt ?? this.startedAt,
        dueAt: dueAt ?? this.dueAt,
        expectedDueAt: expectedDueAt ?? this.expectedDueAt,
        subtopics: subtopics ?? this.subtopics,
        assessmentTopic: assessmentTopic ?? this.assessmentTopic,
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        timeSaved: timeSaved ?? this.timeSaved,
        allSubtopics: allSubtopics ?? this.allSubtopics,
        timeTaken: timeTaken ?? this.timeTaken,
        $__typename: $__typename,
      );
}

// Sanitized Query$AllAssessments$allSessionsClass by FieldClassBuilder
class AllSessionsClass with EquatableMixin {
  AllSessionsClass({
    required this.allAsssessmentsForClass,
    required this.$__typename,
  });

  factory AllSessionsClass.fromGen(Query$AllAssessments$allSessionsClass gen) =>
      AllSessionsClass(
        allAsssessmentsForClass:
            gen.allAsssessmentsForClass.map(Assessment.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<Assessment> allAsssessmentsForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        allAsssessmentsForClass,
        $__typename,
      ];
  AllSessionsClass copyWith({List<Assessment>? allAsssessmentsForClass}) =>
      AllSessionsClass(
        allAsssessmentsForClass:
            allAsssessmentsForClass ?? this.allAsssessmentsForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetAssessmentUpdates by ResponseClassBuilder
class GetAssessmentUpdatesResponse with EquatableMixin {
  GetAssessmentUpdatesResponse({
    required this.assessmentUpdates,
    required this.$__typename,
  });

  factory GetAssessmentUpdatesResponse.fromGen(
          Query$GetAssessmentUpdates gen) =>
      GetAssessmentUpdatesResponse(
        assessmentUpdates: AssessmentUpdates.fromGen(gen.assessmentUpdates),
        $__typename: gen.$__typename,
      );

  final AssessmentUpdates assessmentUpdates;

  final String $__typename;

  @override
  List<Object?> get props => [
        assessmentUpdates,
        $__typename,
      ];
  GetAssessmentUpdatesResponse copyWith(
          {AssessmentUpdates? assessmentUpdates}) =>
      GetAssessmentUpdatesResponse(
        assessmentUpdates: assessmentUpdates ?? this.assessmentUpdates,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser by FieldClassBuilder
class StatsUser with EquatableMixin {
  StatsUser({
    required this.id,
    required this.$__typename,
  });

  factory StatsUser.fromGen(
          Query$GetAssessmentUpdates$assessmentUpdates$statsTests$statsUser
              gen) =>
      StatsUser(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  StatsUser copyWith({String? id}) => StatsUser(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetAssessmentUpdates$assessmentUpdates$statsTests by FieldClassBuilder
class StatsTests with EquatableMixin {
  StatsTests({
    required this.id,
    this.startedAt,
    required this.statsUser,
    required this.$__typename,
  });

  factory StatsTests.fromGen(
          Query$GetAssessmentUpdates$assessmentUpdates$statsTests gen) =>
      StatsTests(
        id: gen.id,
        startedAt: gen.startedAt,
        statsUser: StatsUser.fromGen(gen.statsUser),
        $__typename: gen.$__typename,
      );

  final String id;

  final DateTime? startedAt;

  final StatsUser statsUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        startedAt,
        statsUser,
        $__typename,
      ];
  StatsTests copyWith({
    String? id,
    DateTime? startedAt,
    StatsUser? statsUser,
  }) =>
      StatsTests(
        id: id ?? this.id,
        startedAt: startedAt ?? this.startedAt,
        statsUser: statsUser ?? this.statsUser,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetAssessmentUpdates$assessmentUpdates by FieldClassBuilder
class AssessmentUpdates with EquatableMixin {
  AssessmentUpdates({
    required this.id,
    required this.statsTests,
    required this.expectedDueAt,
    required this.$__typename,
  });

  factory AssessmentUpdates.fromGen(
          Query$GetAssessmentUpdates$assessmentUpdates gen) =>
      AssessmentUpdates(
        id: gen.id,
        statsTests: gen.statsTests.map(StatsTests.fromGen).toList(),
        expectedDueAt: gen.expectedDueAt,
        $__typename: gen.$__typename,
      );

  final String id;

  final List<StatsTests> statsTests;

  final DateTime expectedDueAt;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        statsTests,
        expectedDueAt,
        $__typename,
      ];
  AssessmentUpdates copyWith({
    String? id,
    List<StatsTests>? statsTests,
    DateTime? expectedDueAt,
  }) =>
      AssessmentUpdates(
        id: id ?? this.id,
        statsTests: statsTests ?? this.statsTests,
        expectedDueAt: expectedDueAt ?? this.expectedDueAt,
        $__typename: $__typename,
      );
}

// Sanitized Query$AllAssessmentsLinkedToTopic by ResponseClassBuilder
class AllAssessmentsLinkedToTopicResponse with EquatableMixin {
  AllAssessmentsLinkedToTopicResponse({
    required this.targetTopic,
    required this.$__typename,
  });

  factory AllAssessmentsLinkedToTopicResponse.fromGen(
          Query$AllAssessmentsLinkedToTopic gen) =>
      AllAssessmentsLinkedToTopicResponse(
        targetTopic: TargetTopic.fromGen(gen.targetTopic),
        $__typename: gen.$__typename,
      );

  final TargetTopic targetTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        targetTopic,
        $__typename,
      ];
  AllAssessmentsLinkedToTopicResponse copyWith({TargetTopic? targetTopic}) =>
      AllAssessmentsLinkedToTopicResponse(
        targetTopic: targetTopic ?? this.targetTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$AllAssessmentsLinkedToTopic$targetTopic by FieldClassBuilder
class TargetTopic with EquatableMixin {
  TargetTopic({
    required this.allAssessmentsForTopic,
    required this.$__typename,
  });

  factory TargetTopic.fromGen(
          Query$AllAssessmentsLinkedToTopic$targetTopic gen) =>
      TargetTopic(
        allAssessmentsForTopic:
            gen.allAssessmentsForTopic.map(Assessment.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<Assessment> allAssessmentsForTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        allAssessmentsForTopic,
        $__typename,
      ];
  TargetTopic copyWith({List<Assessment>? allAssessmentsForTopic}) =>
      TargetTopic(
        allAssessmentsForTopic:
            allAssessmentsForTopic ?? this.allAssessmentsForTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$AllAssessmentsLinkedToSubtopic by ResponseClassBuilder
class AllAssessmentsLinkedToSubtopicResponse with EquatableMixin {
  AllAssessmentsLinkedToSubtopicResponse({
    required this.targetSubtopic,
    required this.$__typename,
  });

  factory AllAssessmentsLinkedToSubtopicResponse.fromGen(
          Query$AllAssessmentsLinkedToSubtopic gen) =>
      AllAssessmentsLinkedToSubtopicResponse(
        targetSubtopic: TargetSubtopic.fromGen(gen.targetSubtopic),
        $__typename: gen.$__typename,
      );

  final TargetSubtopic targetSubtopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        targetSubtopic,
        $__typename,
      ];
  AllAssessmentsLinkedToSubtopicResponse copyWith(
          {TargetSubtopic? targetSubtopic}) =>
      AllAssessmentsLinkedToSubtopicResponse(
        targetSubtopic: targetSubtopic ?? this.targetSubtopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$AllAssessmentsLinkedToSubtopic$targetSubtopic by FieldClassBuilder
class TargetSubtopic with EquatableMixin {
  TargetSubtopic({
    required this.allAssessmentsForSubtopic,
    required this.$__typename,
  });

  factory TargetSubtopic.fromGen(
          Query$AllAssessmentsLinkedToSubtopic$targetSubtopic gen) =>
      TargetSubtopic(
        allAssessmentsForSubtopic:
            gen.allAssessmentsForSubtopic.map(Assessment.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<Assessment> allAssessmentsForSubtopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        allAssessmentsForSubtopic,
        $__typename,
      ];
  TargetSubtopic copyWith({List<Assessment>? allAssessmentsForSubtopic}) =>
      TargetSubtopic(
        allAssessmentsForSubtopic:
            allAssessmentsForSubtopic ?? this.allAssessmentsForSubtopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionCounts by ResponseClassBuilder
class DiagnosticTestSessionCountsResponse with EquatableMixin {
  DiagnosticTestSessionCountsResponse({
    required this.classCounts,
    required this.$__typename,
  });

  factory DiagnosticTestSessionCountsResponse.fromGen(
          Query$DiagnosticTestSessionCounts gen) =>
      DiagnosticTestSessionCountsResponse(
        classCounts: ClassCounts.fromGen(gen.classCounts),
        $__typename: gen.$__typename,
      );

  final ClassCounts classCounts;

  final String $__typename;

  @override
  List<Object?> get props => [
        classCounts,
        $__typename,
      ];
  DiagnosticTestSessionCountsResponse copyWith({ClassCounts? classCounts}) =>
      DiagnosticTestSessionCountsResponse(
        classCounts: classCounts ?? this.classCounts,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$DiagnosticTestSessionCounts by FieldClassBuilder
class DiagnosticTestSessionCounts with EquatableMixin {
  DiagnosticTestSessionCounts({
    required this.active,
    required this.past,
    required this.upcoming,
    required this.$__typename,
  });

  factory DiagnosticTestSessionCounts.fromGen(
          Fragment$DiagnosticTestSessionCounts gen) =>
      DiagnosticTestSessionCounts(
        active: gen.active,
        past: gen.past,
        upcoming: gen.upcoming,
        $__typename: gen.$__typename,
      );

  final int active;

  final int past;

  final int upcoming;

  final String $__typename;

  @override
  List<Object?> get props => [
        active,
        past,
        upcoming,
        $__typename,
      ];
  DiagnosticTestSessionCounts copyWith({
    int? active,
    int? past,
    int? upcoming,
  }) =>
      DiagnosticTestSessionCounts(
        active: active ?? this.active,
        past: past ?? this.past,
        upcoming: upcoming ?? this.upcoming,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionCounts$classCounts by FieldClassBuilder
class ClassCounts with EquatableMixin {
  ClassCounts({
    required this.diagnosticTestSessionCounts,
    required this.$__typename,
  });

  factory ClassCounts.fromGen(
          Query$DiagnosticTestSessionCounts$classCounts gen) =>
      ClassCounts(
        diagnosticTestSessionCounts: DiagnosticTestSessionCounts.fromGen(
            gen.diagnosticTestSessionCounts),
        $__typename: gen.$__typename,
      );

  final DiagnosticTestSessionCounts diagnosticTestSessionCounts;

  final String $__typename;

  @override
  List<Object?> get props => [
        diagnosticTestSessionCounts,
        $__typename,
      ];
  ClassCounts copyWith(
          {DiagnosticTestSessionCounts? diagnosticTestSessionCounts}) =>
      ClassCounts(
        diagnosticTestSessionCounts:
            diagnosticTestSessionCounts ?? this.diagnosticTestSessionCounts,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionCountsForTopic by ResponseClassBuilder
class DiagnosticTestSessionCountsForTopicResponse with EquatableMixin {
  DiagnosticTestSessionCountsForTopicResponse({
    required this.countTopic,
    required this.$__typename,
  });

  factory DiagnosticTestSessionCountsForTopicResponse.fromGen(
          Query$DiagnosticTestSessionCountsForTopic gen) =>
      DiagnosticTestSessionCountsForTopicResponse(
        countTopic: CountTopic.fromGen(gen.countTopic),
        $__typename: gen.$__typename,
      );

  final CountTopic countTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        countTopic,
        $__typename,
      ];
  DiagnosticTestSessionCountsForTopicResponse copyWith(
          {CountTopic? countTopic}) =>
      DiagnosticTestSessionCountsForTopicResponse(
        countTopic: countTopic ?? this.countTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionCountsForTopic$countTopic by FieldClassBuilder
class CountTopic with EquatableMixin {
  CountTopic({
    required this.diagnosticTestSessionCounts,
    required this.$__typename,
  });

  factory CountTopic.fromGen(
          Query$DiagnosticTestSessionCountsForTopic$countTopic gen) =>
      CountTopic(
        diagnosticTestSessionCounts: DiagnosticTestSessionCounts.fromGen(
            gen.diagnosticTestSessionCounts),
        $__typename: gen.$__typename,
      );

  final DiagnosticTestSessionCounts diagnosticTestSessionCounts;

  final String $__typename;

  @override
  List<Object?> get props => [
        diagnosticTestSessionCounts,
        $__typename,
      ];
  CountTopic copyWith(
          {DiagnosticTestSessionCounts? diagnosticTestSessionCounts}) =>
      CountTopic(
        diagnosticTestSessionCounts:
            diagnosticTestSessionCounts ?? this.diagnosticTestSessionCounts,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionCountsForSubtopic by ResponseClassBuilder
class DiagnosticTestSessionCountsForSubtopicResponse with EquatableMixin {
  DiagnosticTestSessionCountsForSubtopicResponse({
    required this.countSubtopic,
    required this.$__typename,
  });

  factory DiagnosticTestSessionCountsForSubtopicResponse.fromGen(
          Query$DiagnosticTestSessionCountsForSubtopic gen) =>
      DiagnosticTestSessionCountsForSubtopicResponse(
        countSubtopic: CountSubtopic.fromGen(gen.countSubtopic),
        $__typename: gen.$__typename,
      );

  final CountSubtopic countSubtopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        countSubtopic,
        $__typename,
      ];
  DiagnosticTestSessionCountsForSubtopicResponse copyWith(
          {CountSubtopic? countSubtopic}) =>
      DiagnosticTestSessionCountsForSubtopicResponse(
        countSubtopic: countSubtopic ?? this.countSubtopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic by FieldClassBuilder
class CountSubtopic with EquatableMixin {
  CountSubtopic({
    required this.diagnosticTestSessionCounts,
    required this.$__typename,
  });

  factory CountSubtopic.fromGen(
          Query$DiagnosticTestSessionCountsForSubtopic$countSubtopic gen) =>
      CountSubtopic(
        diagnosticTestSessionCounts: DiagnosticTestSessionCounts.fromGen(
            gen.diagnosticTestSessionCounts),
        $__typename: gen.$__typename,
      );

  final DiagnosticTestSessionCounts diagnosticTestSessionCounts;

  final String $__typename;

  @override
  List<Object?> get props => [
        diagnosticTestSessionCounts,
        $__typename,
      ];
  CountSubtopic copyWith(
          {DiagnosticTestSessionCounts? diagnosticTestSessionCounts}) =>
      CountSubtopic(
        diagnosticTestSessionCounts:
            diagnosticTestSessionCounts ?? this.diagnosticTestSessionCounts,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForClass by ResponseClassBuilder
class GetTopicsForClassResponse with EquatableMixin {
  GetTopicsForClassResponse({
    required this.$class,
    required this.$__typename,
  });

  factory GetTopicsForClassResponse.fromGen(Query$GetTopicsForClass gen) =>
      GetTopicsForClassResponse(
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
  GetTopicsForClassResponse copyWith({Class? $class}) =>
      GetTopicsForClassResponse(
        $class: $class ?? this.$class,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Topic by FieldClassBuilder
class Topic with EquatableMixin {
  Topic({
    required this.id,
    required this.title,
    required this.emoji,
    required this.color,
    required this.$__typename,
  });

  factory Topic.fromGen(Fragment$Topic gen) => Topic(
        id: gen.id,
        title: gen.title,
        emoji: gen.emoji,
        color: gen.color,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String emoji;

  final String color;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        emoji,
        color,
        $__typename,
      ];
  Topic copyWith({
    String? id,
    String? title,
    String? emoji,
    String? color,
  }) =>
      Topic(
        id: id ?? this.id,
        title: title ?? this.title,
        emoji: emoji ?? this.emoji,
        color: color ?? this.color,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForClass$class by FieldClassBuilder
class Class with EquatableMixin {
  Class({
    required this.topicsForClass,
    required this.$__typename,
  });

  factory Class.fromGen(Query$GetTopicsForClass$class gen) => Class(
        topicsForClass: gen.topicsForClass.map(Topic.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<Topic> topicsForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicsForClass,
        $__typename,
      ];
  Class copyWith({List<Topic>? topicsForClass}) => Class(
        topicsForClass: topicsForClass ?? this.topicsForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForClass by ResponseClassBuilder
class GetSubtopicsForClassResponse with EquatableMixin {
  GetSubtopicsForClassResponse({
    required this.topicForClass,
    required this.$__typename,
  });

  factory GetSubtopicsForClassResponse.fromGen(
          Query$GetSubtopicsForClass gen) =>
      GetSubtopicsForClassResponse(
        topicForClass: TopicForClass.fromGen(gen.topicForClass),
        $__typename: gen.$__typename,
      );

  final TopicForClass topicForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicForClass,
        $__typename,
      ];
  GetSubtopicsForClassResponse copyWith({TopicForClass? topicForClass}) =>
      GetSubtopicsForClassResponse(
        topicForClass: topicForClass ?? this.topicForClass,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Subtopic by FieldClassBuilder
class Subtopic with EquatableMixin {
  Subtopic({
    required this.id,
    required this.title,
    required this.icon,
    required this.$__typename,
  });

  factory Subtopic.fromGen(Fragment$Subtopic gen) => Subtopic(
        id: gen.id,
        title: gen.title,
        icon: gen.icon,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String icon;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        icon,
        $__typename,
      ];
  Subtopic copyWith({
    String? id,
    String? title,
    String? icon,
  }) =>
      Subtopic(
        id: id ?? this.id,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForClass$topicForClass by FieldClassBuilder
class TopicForClass with EquatableMixin {
  TopicForClass({
    required this.classSubtopics,
    required this.$__typename,
  });

  factory TopicForClass.fromGen(Query$GetSubtopicsForClass$topicForClass gen) =>
      TopicForClass(
        classSubtopics: gen.classSubtopics.map(Subtopic.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<Subtopic> classSubtopics;

  final String $__typename;

  @override
  List<Object?> get props => [
        classSubtopics,
        $__typename,
      ];
  TopicForClass copyWith({List<Subtopic>? classSubtopics}) => TopicForClass(
        classSubtopics: classSubtopics ?? this.classSubtopics,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionState by ResponseClassBuilder
class DiagnosticTestSessionStateResponse with EquatableMixin {
  DiagnosticTestSessionStateResponse({
    required this.assessmentState,
    required this.$__typename,
  });

  factory DiagnosticTestSessionStateResponse.fromGen(
          Query$DiagnosticTestSessionState gen) =>
      DiagnosticTestSessionStateResponse(
        assessmentState: AssessmentState.fromGen(gen.assessmentState),
        $__typename: gen.$__typename,
      );

  final AssessmentState assessmentState;

  final String $__typename;

  @override
  List<Object?> get props => [
        assessmentState,
        $__typename,
      ];
  DiagnosticTestSessionStateResponse copyWith(
          {AssessmentState? assessmentState}) =>
      DiagnosticTestSessionStateResponse(
        assessmentState: assessmentState ?? this.assessmentState,
        $__typename: $__typename,
      );
}

// Sanitized Query$DiagnosticTestSessionState$assessmentState by FieldClassBuilder
class AssessmentState with EquatableMixin {
  AssessmentState({
    required this.status,
    required this.$__typename,
  });

  factory AssessmentState.fromGen(
          Query$DiagnosticTestSessionState$assessmentState gen) =>
      AssessmentState(
        status: fromDiagnosticTestSessionStatusGen(gen.status),
        $__typename: gen.$__typename,
      );

  final DiagnosticTestSessionStatus status;

  final String $__typename;

  @override
  List<Object?> get props => [
        status,
        $__typename,
      ];
  AssessmentState copyWith({DiagnosticTestSessionStatus? status}) =>
      AssessmentState(
        status: status ?? this.status,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetFinishedDiagnosticTestSession by ResponseClassBuilder
class GetFinishedDiagnosticTestSessionResponse with EquatableMixin {
  GetFinishedDiagnosticTestSessionResponse({
    required this.finishedSession,
    required this.$__typename,
  });

  factory GetFinishedDiagnosticTestSessionResponse.fromGen(
          Query$GetFinishedDiagnosticTestSession gen) =>
      GetFinishedDiagnosticTestSessionResponse(
        finishedSession: FinishedSession.fromGen(gen.finishedSession),
        $__typename: gen.$__typename,
      );

  final FinishedSession finishedSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        finishedSession,
        $__typename,
      ];
  GetFinishedDiagnosticTestSessionResponse copyWith(
          {FinishedSession? finishedSession}) =>
      GetFinishedDiagnosticTestSessionResponse(
        finishedSession: finishedSession ?? this.finishedSession,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic by FieldClassBuilder
class FinishedSessionTopic with EquatableMixin {
  FinishedSessionTopic({
    required this.id,
    required this.title,
    required this.emoji,
    required this.$__typename,
  });

  factory FinishedSessionTopic.fromGen(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionTopic
              gen) =>
      FinishedSessionTopic(
        id: gen.id,
        title: gen.title,
        emoji: gen.emoji,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String emoji;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        emoji,
        $__typename,
      ];
  FinishedSessionTopic copyWith({
    String? id,
    String? title,
    String? emoji,
  }) =>
      FinishedSessionTopic(
        id: id ?? this.id,
        title: title ?? this.title,
        emoji: emoji ?? this.emoji,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress by FieldClassBuilder
class FinishedSessionInitialProgress with EquatableMixin {
  FinishedSessionInitialProgress({
    required this.correct,
    required this.wrong,
    required this.$__typename,
  });

  factory FinishedSessionInitialProgress.fromGen(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionInitialProgress
              gen) =>
      FinishedSessionInitialProgress(
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
  FinishedSessionInitialProgress copyWith({
    double? correct,
    double? wrong,
  }) =>
      FinishedSessionInitialProgress(
        correct: correct ?? this.correct,
        wrong: wrong ?? this.wrong,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress by FieldClassBuilder
class FinishedSessionFinalProgress with EquatableMixin {
  FinishedSessionFinalProgress({
    required this.correct,
    required this.wrong,
    required this.$__typename,
  });

  factory FinishedSessionFinalProgress.fromGen(
          Query$GetFinishedDiagnosticTestSession$finishedSession$finishedSessionFinalProgress
              gen) =>
      FinishedSessionFinalProgress(
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
  FinishedSessionFinalProgress copyWith({
    double? correct,
    double? wrong,
  }) =>
      FinishedSessionFinalProgress(
        correct: correct ?? this.correct,
        wrong: wrong ?? this.wrong,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetFinishedDiagnosticTestSession$finishedSession by FieldClassBuilder
class FinishedSession with EquatableMixin {
  FinishedSession({
    required this.id,
    required this.timeSaved,
    required this.finishedSessionTopic,
    this.finishedSessionInitialProgress,
    this.finishedSessionFinalProgress,
    required this.$__typename,
  });

  factory FinishedSession.fromGen(
          Query$GetFinishedDiagnosticTestSession$finishedSession gen) =>
      FinishedSession(
        id: gen.id,
        timeSaved: gen.timeSaved,
        finishedSessionTopic:
            FinishedSessionTopic.fromGen(gen.finishedSessionTopic),
        finishedSessionInitialProgress:
            gen.finishedSessionInitialProgress == null
                ? null
                : FinishedSessionInitialProgress.fromGen(
                    gen.finishedSessionInitialProgress!),
        finishedSessionFinalProgress: gen.finishedSessionFinalProgress == null
            ? null
            : FinishedSessionFinalProgress.fromGen(
                gen.finishedSessionFinalProgress!),
        $__typename: gen.$__typename,
      );

  final String id;

  final Duration timeSaved;

  final FinishedSessionTopic finishedSessionTopic;

  final FinishedSessionInitialProgress? finishedSessionInitialProgress;

  final FinishedSessionFinalProgress? finishedSessionFinalProgress;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        timeSaved,
        finishedSessionTopic,
        finishedSessionInitialProgress,
        finishedSessionFinalProgress,
        $__typename,
      ];
  FinishedSession copyWith({
    String? id,
    Duration? timeSaved,
    FinishedSessionTopic? finishedSessionTopic,
    FinishedSessionInitialProgress? finishedSessionInitialProgress,
    FinishedSessionFinalProgress? finishedSessionFinalProgress,
  }) =>
      FinishedSession(
        id: id ?? this.id,
        timeSaved: timeSaved ?? this.timeSaved,
        finishedSessionTopic: finishedSessionTopic ?? this.finishedSessionTopic,
        finishedSessionInitialProgress: finishedSessionInitialProgress ??
            this.finishedSessionInitialProgress,
        finishedSessionFinalProgress:
            finishedSessionFinalProgress ?? this.finishedSessionFinalProgress,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateDiagnosticTestSession by ResponseClassBuilder
class CreateDiagnosticTestSessionResponse with EquatableMixin {
  CreateDiagnosticTestSessionResponse({
    required this.createDiagnosticTestSession,
    required this.$__typename,
  });

  factory CreateDiagnosticTestSessionResponse.fromGen(
          Mutation$CreateDiagnosticTestSession gen) =>
      CreateDiagnosticTestSessionResponse(
        createDiagnosticTestSession: CreateDiagnosticTestSession.fromGen(
            gen.createDiagnosticTestSession),
        $__typename: gen.$__typename,
      );

  final CreateDiagnosticTestSession createDiagnosticTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        createDiagnosticTestSession,
        $__typename,
      ];
  CreateDiagnosticTestSessionResponse copyWith(
          {CreateDiagnosticTestSession? createDiagnosticTestSession}) =>
      CreateDiagnosticTestSessionResponse(
        createDiagnosticTestSession:
            createDiagnosticTestSession ?? this.createDiagnosticTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession by FieldClassBuilder
class CreateDiagnosticTestSession with EquatableMixin {
  CreateDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory CreateDiagnosticTestSession.fromGen(
          Mutation$CreateDiagnosticTestSession$createDiagnosticTestSession
              gen) =>
      CreateDiagnosticTestSession(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  CreateDiagnosticTestSession copyWith({String? id}) =>
      CreateDiagnosticTestSession(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UpdateDiagnosticTestSession by ResponseClassBuilder
class UpdateDiagnosticTestSessionResponse with EquatableMixin {
  UpdateDiagnosticTestSessionResponse({
    required this.updateDiagnosticTestSession,
    required this.$__typename,
  });

  factory UpdateDiagnosticTestSessionResponse.fromGen(
          Mutation$UpdateDiagnosticTestSession gen) =>
      UpdateDiagnosticTestSessionResponse(
        updateDiagnosticTestSession: UpdateDiagnosticTestSession.fromGen(
            gen.updateDiagnosticTestSession),
        $__typename: gen.$__typename,
      );

  final UpdateDiagnosticTestSession updateDiagnosticTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        updateDiagnosticTestSession,
        $__typename,
      ];
  UpdateDiagnosticTestSessionResponse copyWith(
          {UpdateDiagnosticTestSession? updateDiagnosticTestSession}) =>
      UpdateDiagnosticTestSessionResponse(
        updateDiagnosticTestSession:
            updateDiagnosticTestSession ?? this.updateDiagnosticTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession by FieldClassBuilder
class UpdateDiagnosticTestSession with EquatableMixin {
  UpdateDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory UpdateDiagnosticTestSession.fromGen(
          Mutation$UpdateDiagnosticTestSession$updateDiagnosticTestSession
              gen) =>
      UpdateDiagnosticTestSession(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  UpdateDiagnosticTestSession copyWith({String? id}) =>
      UpdateDiagnosticTestSession(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$StartDiagnosticTestSession by ResponseClassBuilder
class StartDiagnosticTestSessionResponse with EquatableMixin {
  StartDiagnosticTestSessionResponse({
    required this.startDiagnosticTestSession,
    required this.$__typename,
  });

  factory StartDiagnosticTestSessionResponse.fromGen(
          Mutation$StartDiagnosticTestSession gen) =>
      StartDiagnosticTestSessionResponse(
        startDiagnosticTestSession:
            StartDiagnosticTestSession.fromGen(gen.startDiagnosticTestSession),
        $__typename: gen.$__typename,
      );

  final StartDiagnosticTestSession startDiagnosticTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        startDiagnosticTestSession,
        $__typename,
      ];
  StartDiagnosticTestSessionResponse copyWith(
          {StartDiagnosticTestSession? startDiagnosticTestSession}) =>
      StartDiagnosticTestSessionResponse(
        startDiagnosticTestSession:
            startDiagnosticTestSession ?? this.startDiagnosticTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$StartDiagnosticTestSession$startDiagnosticTestSession by FieldClassBuilder
class StartDiagnosticTestSession with EquatableMixin {
  StartDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory StartDiagnosticTestSession.fromGen(
          Mutation$StartDiagnosticTestSession$startDiagnosticTestSession gen) =>
      StartDiagnosticTestSession(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  StartDiagnosticTestSession copyWith({String? id}) =>
      StartDiagnosticTestSession(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$PauseDiagnosticTestSession by ResponseClassBuilder
class PauseDiagnosticTestSessionResponse with EquatableMixin {
  PauseDiagnosticTestSessionResponse({
    required this.pauseDiagnosticTestSession,
    required this.$__typename,
  });

  factory PauseDiagnosticTestSessionResponse.fromGen(
          Mutation$PauseDiagnosticTestSession gen) =>
      PauseDiagnosticTestSessionResponse(
        pauseDiagnosticTestSession:
            PauseDiagnosticTestSession.fromGen(gen.pauseDiagnosticTestSession),
        $__typename: gen.$__typename,
      );

  final PauseDiagnosticTestSession pauseDiagnosticTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        pauseDiagnosticTestSession,
        $__typename,
      ];
  PauseDiagnosticTestSessionResponse copyWith(
          {PauseDiagnosticTestSession? pauseDiagnosticTestSession}) =>
      PauseDiagnosticTestSessionResponse(
        pauseDiagnosticTestSession:
            pauseDiagnosticTestSession ?? this.pauseDiagnosticTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession by FieldClassBuilder
class PauseDiagnosticTestSession with EquatableMixin {
  PauseDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory PauseDiagnosticTestSession.fromGen(
          Mutation$PauseDiagnosticTestSession$pauseDiagnosticTestSession gen) =>
      PauseDiagnosticTestSession(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  PauseDiagnosticTestSession copyWith({String? id}) =>
      PauseDiagnosticTestSession(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$ResumeDiagnosticTestSession by ResponseClassBuilder
class ResumeDiagnosticTestSessionResponse with EquatableMixin {
  ResumeDiagnosticTestSessionResponse({
    required this.resumeDiagnosticTestSession,
    required this.$__typename,
  });

  factory ResumeDiagnosticTestSessionResponse.fromGen(
          Mutation$ResumeDiagnosticTestSession gen) =>
      ResumeDiagnosticTestSessionResponse(
        resumeDiagnosticTestSession: ResumeDiagnosticTestSession.fromGen(
            gen.resumeDiagnosticTestSession),
        $__typename: gen.$__typename,
      );

  final ResumeDiagnosticTestSession resumeDiagnosticTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        resumeDiagnosticTestSession,
        $__typename,
      ];
  ResumeDiagnosticTestSessionResponse copyWith(
          {ResumeDiagnosticTestSession? resumeDiagnosticTestSession}) =>
      ResumeDiagnosticTestSessionResponse(
        resumeDiagnosticTestSession:
            resumeDiagnosticTestSession ?? this.resumeDiagnosticTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession by FieldClassBuilder
class ResumeDiagnosticTestSession with EquatableMixin {
  ResumeDiagnosticTestSession({
    required this.id,
    required this.expectedDueAt,
    required this.$__typename,
  });

  factory ResumeDiagnosticTestSession.fromGen(
          Mutation$ResumeDiagnosticTestSession$resumeDiagnosticTestSession
              gen) =>
      ResumeDiagnosticTestSession(
        id: gen.id,
        expectedDueAt: gen.expectedDueAt,
        $__typename: gen.$__typename,
      );

  final String id;

  final DateTime expectedDueAt;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        expectedDueAt,
        $__typename,
      ];
  ResumeDiagnosticTestSession copyWith({
    String? id,
    DateTime? expectedDueAt,
  }) =>
      ResumeDiagnosticTestSession(
        id: id ?? this.id,
        expectedDueAt: expectedDueAt ?? this.expectedDueAt,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$FinishDiagnosticTestSession by ResponseClassBuilder
class FinishDiagnosticTestSessionResponse with EquatableMixin {
  FinishDiagnosticTestSessionResponse({
    required this.finishDiagnosticTestSession,
    required this.$__typename,
  });

  factory FinishDiagnosticTestSessionResponse.fromGen(
          Mutation$FinishDiagnosticTestSession gen) =>
      FinishDiagnosticTestSessionResponse(
        finishDiagnosticTestSession: FinishDiagnosticTestSession.fromGen(
            gen.finishDiagnosticTestSession),
        $__typename: gen.$__typename,
      );

  final FinishDiagnosticTestSession finishDiagnosticTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        finishDiagnosticTestSession,
        $__typename,
      ];
  FinishDiagnosticTestSessionResponse copyWith(
          {FinishDiagnosticTestSession? finishDiagnosticTestSession}) =>
      FinishDiagnosticTestSessionResponse(
        finishDiagnosticTestSession:
            finishDiagnosticTestSession ?? this.finishDiagnosticTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress by FieldClassBuilder
class InitialProgress with EquatableMixin {
  InitialProgress({
    required this.wrong,
    required this.correct,
    required this.$__typename,
  });

  factory InitialProgress.fromGen(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$initialProgress
              gen) =>
      InitialProgress(
        wrong: gen.wrong,
        correct: gen.correct,
        $__typename: gen.$__typename,
      );

  final double wrong;

  final double correct;

  final String $__typename;

  @override
  List<Object?> get props => [
        wrong,
        correct,
        $__typename,
      ];
  InitialProgress copyWith({
    double? wrong,
    double? correct,
  }) =>
      InitialProgress(
        wrong: wrong ?? this.wrong,
        correct: correct ?? this.correct,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress by FieldClassBuilder
class FinalProgress with EquatableMixin {
  FinalProgress({
    required this.wrong,
    required this.correct,
    required this.$__typename,
  });

  factory FinalProgress.fromGen(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finalProgress
              gen) =>
      FinalProgress(
        wrong: gen.wrong,
        correct: gen.correct,
        $__typename: gen.$__typename,
      );

  final double wrong;

  final double correct;

  final String $__typename;

  @override
  List<Object?> get props => [
        wrong,
        correct,
        $__typename,
      ];
  FinalProgress copyWith({
    double? wrong,
    double? correct,
  }) =>
      FinalProgress(
        wrong: wrong ?? this.wrong,
        correct: correct ?? this.correct,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic by FieldClassBuilder
class FinishedAssessmentTopic with EquatableMixin {
  FinishedAssessmentTopic({
    required this.id,
    required this.title,
    required this.emoji,
    required this.$__typename,
  });

  factory FinishedAssessmentTopic.fromGen(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession$finishedAssessmentTopic
              gen) =>
      FinishedAssessmentTopic(
        id: gen.id,
        title: gen.title,
        emoji: gen.emoji,
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String emoji;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        emoji,
        $__typename,
      ];
  FinishedAssessmentTopic copyWith({
    String? id,
    String? title,
    String? emoji,
  }) =>
      FinishedAssessmentTopic(
        id: id ?? this.id,
        title: title ?? this.title,
        emoji: emoji ?? this.emoji,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession by FieldClassBuilder
class FinishDiagnosticTestSession with EquatableMixin {
  FinishDiagnosticTestSession({
    required this.id,
    this.initialProgress,
    this.finalProgress,
    required this.timeSaved,
    required this.finishedAssessmentTopic,
    required this.$__typename,
  });

  factory FinishDiagnosticTestSession.fromGen(
          Mutation$FinishDiagnosticTestSession$finishDiagnosticTestSession
              gen) =>
      FinishDiagnosticTestSession(
        id: gen.id,
        initialProgress: gen.initialProgress == null
            ? null
            : InitialProgress.fromGen(gen.initialProgress!),
        finalProgress: gen.finalProgress == null
            ? null
            : FinalProgress.fromGen(gen.finalProgress!),
        timeSaved: gen.timeSaved,
        finishedAssessmentTopic:
            FinishedAssessmentTopic.fromGen(gen.finishedAssessmentTopic),
        $__typename: gen.$__typename,
      );

  final String id;

  final InitialProgress? initialProgress;

  final FinalProgress? finalProgress;

  final Duration timeSaved;

  final FinishedAssessmentTopic finishedAssessmentTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        initialProgress,
        finalProgress,
        timeSaved,
        finishedAssessmentTopic,
        $__typename,
      ];
  FinishDiagnosticTestSession copyWith({
    String? id,
    InitialProgress? initialProgress,
    FinalProgress? finalProgress,
    Duration? timeSaved,
    FinishedAssessmentTopic? finishedAssessmentTopic,
  }) =>
      FinishDiagnosticTestSession(
        id: id ?? this.id,
        initialProgress: initialProgress ?? this.initialProgress,
        finalProgress: finalProgress ?? this.finalProgress,
        timeSaved: timeSaved ?? this.timeSaved,
        finishedAssessmentTopic:
            finishedAssessmentTopic ?? this.finishedAssessmentTopic,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$RemoveDiagnosticTestSession by ResponseClassBuilder
class RemoveDiagnosticTestSessionResponse with EquatableMixin {
  RemoveDiagnosticTestSessionResponse({
    required this.removeDiagnosticTestSession,
    required this.$__typename,
  });

  factory RemoveDiagnosticTestSessionResponse.fromGen(
          Mutation$RemoveDiagnosticTestSession gen) =>
      RemoveDiagnosticTestSessionResponse(
        removeDiagnosticTestSession: RemoveDiagnosticTestSession.fromGen(
            gen.removeDiagnosticTestSession),
        $__typename: gen.$__typename,
      );

  final RemoveDiagnosticTestSession removeDiagnosticTestSession;

  final String $__typename;

  @override
  List<Object?> get props => [
        removeDiagnosticTestSession,
        $__typename,
      ];
  RemoveDiagnosticTestSessionResponse copyWith(
          {RemoveDiagnosticTestSession? removeDiagnosticTestSession}) =>
      RemoveDiagnosticTestSessionResponse(
        removeDiagnosticTestSession:
            removeDiagnosticTestSession ?? this.removeDiagnosticTestSession,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession by FieldClassBuilder
class RemoveDiagnosticTestSession with EquatableMixin {
  RemoveDiagnosticTestSession({
    required this.id,
    required this.$__typename,
  });

  factory RemoveDiagnosticTestSession.fromGen(
          Mutation$RemoveDiagnosticTestSession$removeDiagnosticTestSession
              gen) =>
      RemoveDiagnosticTestSession(
        id: gen.id,
        $__typename: gen.$__typename,
      );

  final String id;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        $__typename,
      ];
  RemoveDiagnosticTestSession copyWith({String? id}) =>
      RemoveDiagnosticTestSession(
        id: id ?? this.id,
        $__typename: $__typename,
      );
}

// Sanitized Variables$Query$AllAssessments by ArgsClassBuilder
class AllAssessmentsArgs with EquatableMixin {
  AllAssessmentsArgs({
    required this.interval,
    required this.classId,
  });

  final DiagnosticTestSessionInterval interval;

  final String classId;

  @override
  List<Object?> get props => [
        interval,
        classId,
      ];
  Variables$Query$AllAssessments toGen() => Variables$Query$AllAssessments(
        interval: interval.toGen(),
        classId: classId,
      );
}

// Sanitized Variables$Query$GetAssessmentUpdates by ArgsClassBuilder
class GetAssessmentUpdatesArgs with EquatableMixin {
  GetAssessmentUpdatesArgs({required this.diagnosticTestSessionId});

  final String diagnosticTestSessionId;

  @override
  List<Object?> get props => [diagnosticTestSessionId];
  Variables$Query$GetAssessmentUpdates toGen() =>
      Variables$Query$GetAssessmentUpdates(
          diagnosticTestSessionId: diagnosticTestSessionId);
}

// Sanitized Variables$Query$AllAssessmentsLinkedToTopic by ArgsClassBuilder
class AllAssessmentsLinkedToTopicArgs with EquatableMixin {
  AllAssessmentsLinkedToTopicArgs({
    required this.classId,
    required this.topicId,
    required this.interval,
  });

  final String classId;

  final String topicId;

  final DiagnosticTestSessionInterval interval;

  @override
  List<Object?> get props => [
        classId,
        topicId,
        interval,
      ];
  Variables$Query$AllAssessmentsLinkedToTopic toGen() =>
      Variables$Query$AllAssessmentsLinkedToTopic(
        classId: classId,
        topicId: topicId,
        interval: interval.toGen(),
      );
}

// Sanitized Variables$Query$AllAssessmentsLinkedToSubtopic by ArgsClassBuilder
class AllAssessmentsLinkedToSubtopicArgs with EquatableMixin {
  AllAssessmentsLinkedToSubtopicArgs({
    required this.classId,
    required this.interval,
    required this.subtopicId,
  });

  final String classId;

  final DiagnosticTestSessionInterval interval;

  final String subtopicId;

  @override
  List<Object?> get props => [
        classId,
        interval,
        subtopicId,
      ];
  Variables$Query$AllAssessmentsLinkedToSubtopic toGen() =>
      Variables$Query$AllAssessmentsLinkedToSubtopic(
        classId: classId,
        interval: interval.toGen(),
        subtopicId: subtopicId,
      );
}

// Sanitized Variables$Query$DiagnosticTestSessionCounts by ArgsClassBuilder
class DiagnosticTestSessionCountsArgs with EquatableMixin {
  DiagnosticTestSessionCountsArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$DiagnosticTestSessionCounts toGen() =>
      Variables$Query$DiagnosticTestSessionCounts(classId: classId);
}

// Sanitized Variables$Query$DiagnosticTestSessionCountsForTopic by ArgsClassBuilder
class DiagnosticTestSessionCountsForTopicArgs with EquatableMixin {
  DiagnosticTestSessionCountsForTopicArgs({
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
  Variables$Query$DiagnosticTestSessionCountsForTopic toGen() =>
      Variables$Query$DiagnosticTestSessionCountsForTopic(
        classId: classId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$DiagnosticTestSessionCountsForSubtopic by ArgsClassBuilder
class DiagnosticTestSessionCountsForSubtopicArgs with EquatableMixin {
  DiagnosticTestSessionCountsForSubtopicArgs({
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
  Variables$Query$DiagnosticTestSessionCountsForSubtopic toGen() =>
      Variables$Query$DiagnosticTestSessionCountsForSubtopic(
        classId: classId,
        subtopicId: subtopicId,
      );
}

// Sanitized Variables$Query$GetTopicsForClass by ArgsClassBuilder
class GetTopicsForClassArgs with EquatableMixin {
  GetTopicsForClassArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetTopicsForClass toGen() =>
      Variables$Query$GetTopicsForClass(classId: classId);
}

// Sanitized Variables$Query$GetSubtopicsForClass by ArgsClassBuilder
class GetSubtopicsForClassArgs with EquatableMixin {
  GetSubtopicsForClassArgs({
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
  Variables$Query$GetSubtopicsForClass toGen() =>
      Variables$Query$GetSubtopicsForClass(
        classId: classId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$DiagnosticTestSessionState by ArgsClassBuilder
class DiagnosticTestSessionStateArgs with EquatableMixin {
  DiagnosticTestSessionStateArgs({required this.diagnosticTestSessionId});

  final String diagnosticTestSessionId;

  @override
  List<Object?> get props => [diagnosticTestSessionId];
  Variables$Query$DiagnosticTestSessionState toGen() =>
      Variables$Query$DiagnosticTestSessionState(
          diagnosticTestSessionId: diagnosticTestSessionId);
}

// Sanitized Variables$Query$GetFinishedDiagnosticTestSession by ArgsClassBuilder
class GetFinishedDiagnosticTestSessionArgs with EquatableMixin {
  GetFinishedDiagnosticTestSessionArgs({required this.diagnosticTestSessionId});

  final String diagnosticTestSessionId;

  @override
  List<Object?> get props => [diagnosticTestSessionId];
  Variables$Query$GetFinishedDiagnosticTestSession toGen() =>
      Variables$Query$GetFinishedDiagnosticTestSession(
          diagnosticTestSessionId: diagnosticTestSessionId);
}

// Sanitized Variables$Mutation$CreateDiagnosticTestSession by ArgsClassBuilder
class CreateDiagnosticTestSessionArgs with EquatableMixin {
  CreateDiagnosticTestSessionArgs({
    required this.classId,
    required this.input,
  });

  final String classId;

  final CreateDiagnosticTestSessionInput input;

  @override
  List<Object?> get props => [
        classId,
        input,
      ];
  Variables$Mutation$CreateDiagnosticTestSession toGen() =>
      Variables$Mutation$CreateDiagnosticTestSession(
        classId: classId,
        input: input.toGen(),
      );
}

// Sanitized Variables$Mutation$UpdateDiagnosticTestSession by ArgsClassBuilder
class UpdateDiagnosticTestSessionArgs with EquatableMixin {
  UpdateDiagnosticTestSessionArgs({
    required this.sessionId,
    required this.input,
  });

  final String sessionId;

  final UpdateDiagnosticTestSessionInput input;

  @override
  List<Object?> get props => [
        sessionId,
        input,
      ];
  Variables$Mutation$UpdateDiagnosticTestSession toGen() =>
      Variables$Mutation$UpdateDiagnosticTestSession(
        sessionId: sessionId,
        input: input.toGen(),
      );
}

// Sanitized Variables$Mutation$StartDiagnosticTestSession by ArgsClassBuilder
class StartDiagnosticTestSessionArgs with EquatableMixin {
  StartDiagnosticTestSessionArgs({required this.testId});

  final String testId;

  @override
  List<Object?> get props => [testId];
  Variables$Mutation$StartDiagnosticTestSession toGen() =>
      Variables$Mutation$StartDiagnosticTestSession(testId: testId);
}

// Sanitized Variables$Mutation$PauseDiagnosticTestSession by ArgsClassBuilder
class PauseDiagnosticTestSessionArgs with EquatableMixin {
  PauseDiagnosticTestSessionArgs({required this.testId});

  final String testId;

  @override
  List<Object?> get props => [testId];
  Variables$Mutation$PauseDiagnosticTestSession toGen() =>
      Variables$Mutation$PauseDiagnosticTestSession(testId: testId);
}

// Sanitized Variables$Mutation$ResumeDiagnosticTestSession by ArgsClassBuilder
class ResumeDiagnosticTestSessionArgs with EquatableMixin {
  ResumeDiagnosticTestSessionArgs({required this.testId});

  final String testId;

  @override
  List<Object?> get props => [testId];
  Variables$Mutation$ResumeDiagnosticTestSession toGen() =>
      Variables$Mutation$ResumeDiagnosticTestSession(testId: testId);
}

// Sanitized Variables$Mutation$FinishDiagnosticTestSession by ArgsClassBuilder
class FinishDiagnosticTestSessionArgs with EquatableMixin {
  FinishDiagnosticTestSessionArgs({required this.testId});

  final String testId;

  @override
  List<Object?> get props => [testId];
  Variables$Mutation$FinishDiagnosticTestSession toGen() =>
      Variables$Mutation$FinishDiagnosticTestSession(testId: testId);
}

// Sanitized Variables$Mutation$RemoveDiagnosticTestSession by ArgsClassBuilder
class RemoveDiagnosticTestSessionArgs with EquatableMixin {
  RemoveDiagnosticTestSessionArgs({required this.testId});

  final String testId;

  @override
  List<Object?> get props => [testId];
  Variables$Mutation$RemoveDiagnosticTestSession toGen() =>
      Variables$Mutation$RemoveDiagnosticTestSession(testId: testId);
}

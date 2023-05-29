// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SanitizerGenerator
// **************************************************************************

import 'package:equatable/equatable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_learn.graphql.dart'; // Sanitized Query$GetTopicsForClass by ResponseClassBuilder

class GetTopicsForClassResponse with EquatableMixin {
  GetTopicsForClassResponse({
    required this.topicsClass,
    required this.$__typename,
  });

  factory GetTopicsForClassResponse.fromGen(Query$GetTopicsForClass gen) =>
      GetTopicsForClassResponse(
        topicsClass: TopicsClass.fromGen(gen.topicsClass),
        $__typename: gen.$__typename,
      );

  final TopicsClass topicsClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicsClass,
        $__typename,
      ];
  GetTopicsForClassResponse copyWith({TopicsClass? topicsClass}) =>
      GetTopicsForClassResponse(
        topicsClass: topicsClass ?? this.topicsClass,
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

// Sanitized Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass by FieldClassBuilder
class TopicsProgressForClass with EquatableMixin {
  TopicsProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory TopicsProgressForClass.fromGen(
          Query$GetTopicsForClass$topicsClass$topicsForClass$topicsProgressForClass
              gen) =>
      TopicsProgressForClass(
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        progress,
        $__typename,
      ];
  TopicsProgressForClass copyWith({Progress? progress}) =>
      TopicsProgressForClass(
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForClass$topicsClass$topicsForClass by FieldClassBuilder
class TopicsForClass with EquatableMixin {
  TopicsForClass({
    required this.id,
    required this.title,
    required this.color,
    required this.emoji,
    required this.topicsProgressForClass,
    required this.$__typename,
  });

  factory TopicsForClass.fromGen(
          Query$GetTopicsForClass$topicsClass$topicsForClass gen) =>
      TopicsForClass(
        id: gen.id,
        title: gen.title,
        color: gen.color,
        emoji: gen.emoji,
        topicsProgressForClass:
            TopicsProgressForClass.fromGen(gen.topicsProgressForClass),
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String color;

  final String emoji;

  final TopicsProgressForClass topicsProgressForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        color,
        emoji,
        topicsProgressForClass,
        $__typename,
      ];
  TopicsForClass copyWith({
    String? id,
    String? title,
    String? color,
    String? emoji,
    TopicsProgressForClass? topicsProgressForClass,
  }) =>
      TopicsForClass(
        id: id ?? this.id,
        title: title ?? this.title,
        color: color ?? this.color,
        emoji: emoji ?? this.emoji,
        topicsProgressForClass:
            topicsProgressForClass ?? this.topicsProgressForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForClass$topicsClass by FieldClassBuilder
class TopicsClass with EquatableMixin {
  TopicsClass({
    required this.id,
    required this.topicsForClass,
    required this.$__typename,
  });

  factory TopicsClass.fromGen(Query$GetTopicsForClass$topicsClass gen) =>
      TopicsClass(
        id: gen.id,
        topicsForClass: gen.topicsForClass.map(TopicsForClass.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<TopicsForClass> topicsForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        topicsForClass,
        $__typename,
      ];
  TopicsClass copyWith({
    String? id,
    List<TopicsForClass>? topicsForClass,
  }) =>
      TopicsClass(
        id: id ?? this.id,
        topicsForClass: topicsForClass ?? this.topicsForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForClassStudent by ResponseClassBuilder
class GetTopicsForClassStudentResponse with EquatableMixin {
  GetTopicsForClassStudentResponse({
    required this.topicsStudent,
    required this.$__typename,
  });

  factory GetTopicsForClassStudentResponse.fromGen(
          Query$GetTopicsForClassStudent gen) =>
      GetTopicsForClassStudentResponse(
        topicsStudent: TopicsStudent.fromGen(gen.topicsStudent),
        $__typename: gen.$__typename,
      );

  final TopicsStudent topicsStudent;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicsStudent,
        $__typename,
      ];
  GetTopicsForClassStudentResponse copyWith({TopicsStudent? topicsStudent}) =>
      GetTopicsForClassStudentResponse(
        topicsStudent: topicsStudent ?? this.topicsStudent,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent by FieldClassBuilder
class TopicsForStudent with EquatableMixin {
  TopicsForStudent({
    required this.id,
    required this.title,
    required this.color,
    required this.emoji,
    required this.progress,
    required this.$__typename,
  });

  factory TopicsForStudent.fromGen(
          Query$GetTopicsForClassStudent$topicsStudent$topicsForStudent gen) =>
      TopicsForStudent(
        id: gen.id,
        title: gen.title,
        color: gen.color,
        emoji: gen.emoji,
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String color;

  final String emoji;

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        color,
        emoji,
        progress,
        $__typename,
      ];
  TopicsForStudent copyWith({
    String? id,
    String? title,
    String? color,
    String? emoji,
    Progress? progress,
  }) =>
      TopicsForStudent(
        id: id ?? this.id,
        title: title ?? this.title,
        color: color ?? this.color,
        emoji: emoji ?? this.emoji,
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForClassStudent$topicsStudent by FieldClassBuilder
class TopicsStudent with EquatableMixin {
  TopicsStudent({
    required this.id,
    required this.topicsForStudent,
    required this.$__typename,
  });

  factory TopicsStudent.fromGen(
          Query$GetTopicsForClassStudent$topicsStudent gen) =>
      TopicsStudent(
        id: gen.id,
        topicsForStudent:
            gen.topicsForStudent.map(TopicsForStudent.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<TopicsForStudent> topicsForStudent;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        topicsForStudent,
        $__typename,
      ];
  TopicsStudent copyWith({
    String? id,
    List<TopicsForStudent>? topicsForStudent,
  }) =>
      TopicsStudent(
        id: id ?? this.id,
        topicsForStudent: topicsForStudent ?? this.topicsForStudent,
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

// Sanitized Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass by FieldClassBuilder
class SubtopicsProgressForClass with EquatableMixin {
  SubtopicsProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory SubtopicsProgressForClass.fromGen(
          Query$GetSubtopicsForClass$topicForClass$classSubtopics$subtopicsProgressForClass
              gen) =>
      SubtopicsProgressForClass(
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        progress,
        $__typename,
      ];
  SubtopicsProgressForClass copyWith({Progress? progress}) =>
      SubtopicsProgressForClass(
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Years by FieldClassBuilder
class Years with EquatableMixin {
  Years({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Years.fromGen(Fragment$Years gen) => Years(
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
  Years copyWith({
    String? id,
    String? title,
  }) =>
      Years(
        id: id ?? this.id,
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForClass$topicForClass$classSubtopics by FieldClassBuilder
class ClassSubtopics with EquatableMixin {
  ClassSubtopics({
    required this.id,
    required this.subtopicsProgressForClass,
    required this.title,
    required this.stateForClass,
    required this.icon,
    required this.flaggedSkillsForClass,
    required this.taughtSkillsForClass,
    required this.totalSkillsForClass,
    required this.years,
    required this.$__typename,
  });

  factory ClassSubtopics.fromGen(
          Query$GetSubtopicsForClass$topicForClass$classSubtopics gen) =>
      ClassSubtopics(
        id: gen.id,
        subtopicsProgressForClass:
            SubtopicsProgressForClass.fromGen(gen.subtopicsProgressForClass),
        title: gen.title,
        stateForClass: fromSubtopicStateGen(gen.stateForClass),
        icon: gen.icon,
        flaggedSkillsForClass: gen.flaggedSkillsForClass,
        taughtSkillsForClass: gen.taughtSkillsForClass,
        totalSkillsForClass: gen.totalSkillsForClass,
        years: gen.years.map(Years.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final SubtopicsProgressForClass subtopicsProgressForClass;

  final String title;

  final SubtopicState stateForClass;

  final String icon;

  final int flaggedSkillsForClass;

  final int taughtSkillsForClass;

  final int totalSkillsForClass;

  final List<Years> years;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        subtopicsProgressForClass,
        title,
        stateForClass,
        icon,
        flaggedSkillsForClass,
        taughtSkillsForClass,
        totalSkillsForClass,
        years,
        $__typename,
      ];
  ClassSubtopics copyWith({
    String? id,
    SubtopicsProgressForClass? subtopicsProgressForClass,
    String? title,
    SubtopicState? stateForClass,
    String? icon,
    int? flaggedSkillsForClass,
    int? taughtSkillsForClass,
    int? totalSkillsForClass,
    List<Years>? years,
  }) =>
      ClassSubtopics(
        id: id ?? this.id,
        subtopicsProgressForClass:
            subtopicsProgressForClass ?? this.subtopicsProgressForClass,
        title: title ?? this.title,
        stateForClass: stateForClass ?? this.stateForClass,
        icon: icon ?? this.icon,
        flaggedSkillsForClass:
            flaggedSkillsForClass ?? this.flaggedSkillsForClass,
        taughtSkillsForClass: taughtSkillsForClass ?? this.taughtSkillsForClass,
        totalSkillsForClass: totalSkillsForClass ?? this.totalSkillsForClass,
        years: years ?? this.years,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForClass$topicForClass by FieldClassBuilder
class TopicForClass with EquatableMixin {
  TopicForClass({
    required this.id,
    required this.color,
    required this.title,
    required this.classSubtopics,
    required this.$__typename,
  });

  factory TopicForClass.fromGen(Query$GetSubtopicsForClass$topicForClass gen) =>
      TopicForClass(
        id: gen.id,
        color: gen.color,
        title: gen.title,
        classSubtopics: gen.classSubtopics.map(ClassSubtopics.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String color;

  final String title;

  final List<ClassSubtopics> classSubtopics;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        color,
        title,
        classSubtopics,
        $__typename,
      ];
  TopicForClass copyWith({
    String? id,
    String? color,
    String? title,
    List<ClassSubtopics>? classSubtopics,
  }) =>
      TopicForClass(
        id: id ?? this.id,
        color: color ?? this.color,
        title: title ?? this.title,
        classSubtopics: classSubtopics ?? this.classSubtopics,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForClassStudent by ResponseClassBuilder
class GetSubtopicsForClassStudentResponse with EquatableMixin {
  GetSubtopicsForClassStudentResponse({
    required this.topicForStudent,
    required this.$__typename,
  });

  factory GetSubtopicsForClassStudentResponse.fromGen(
          Query$GetSubtopicsForClassStudent gen) =>
      GetSubtopicsForClassStudentResponse(
        topicForStudent: TopicForStudent.fromGen(gen.topicForStudent),
        $__typename: gen.$__typename,
      );

  final TopicForStudent topicForStudent;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicForStudent,
        $__typename,
      ];
  GetSubtopicsForClassStudentResponse copyWith(
          {TopicForStudent? topicForStudent}) =>
      GetSubtopicsForClassStudentResponse(
        topicForStudent: topicForStudent ?? this.topicForStudent,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics by FieldClassBuilder
class StudentSubtopics with EquatableMixin {
  StudentSubtopics({
    required this.id,
    required this.progress,
    required this.title,
    required this.stateForClass,
    required this.icon,
    required this.flaggedSkillsForClass,
    required this.taughtSkillsForClass,
    required this.totalSkillsForClass,
    required this.years,
    required this.$__typename,
  });

  factory StudentSubtopics.fromGen(
          Query$GetSubtopicsForClassStudent$topicForStudent$studentSubtopics
              gen) =>
      StudentSubtopics(
        id: gen.id,
        progress: Progress.fromGen(gen.progress),
        title: gen.title,
        stateForClass: fromSubtopicStateGen(gen.stateForClass),
        icon: gen.icon,
        flaggedSkillsForClass: gen.flaggedSkillsForClass,
        taughtSkillsForClass: gen.taughtSkillsForClass,
        totalSkillsForClass: gen.totalSkillsForClass,
        years: gen.years.map(Years.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final Progress progress;

  final String title;

  final SubtopicState stateForClass;

  final String icon;

  final int flaggedSkillsForClass;

  final int taughtSkillsForClass;

  final int totalSkillsForClass;

  final List<Years> years;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        progress,
        title,
        stateForClass,
        icon,
        flaggedSkillsForClass,
        taughtSkillsForClass,
        totalSkillsForClass,
        years,
        $__typename,
      ];
  StudentSubtopics copyWith({
    String? id,
    Progress? progress,
    String? title,
    SubtopicState? stateForClass,
    String? icon,
    int? flaggedSkillsForClass,
    int? taughtSkillsForClass,
    int? totalSkillsForClass,
    List<Years>? years,
  }) =>
      StudentSubtopics(
        id: id ?? this.id,
        progress: progress ?? this.progress,
        title: title ?? this.title,
        stateForClass: stateForClass ?? this.stateForClass,
        icon: icon ?? this.icon,
        flaggedSkillsForClass:
            flaggedSkillsForClass ?? this.flaggedSkillsForClass,
        taughtSkillsForClass: taughtSkillsForClass ?? this.taughtSkillsForClass,
        totalSkillsForClass: totalSkillsForClass ?? this.totalSkillsForClass,
        years: years ?? this.years,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForClassStudent$topicForStudent by FieldClassBuilder
class TopicForStudent with EquatableMixin {
  TopicForStudent({
    required this.id,
    required this.color,
    required this.title,
    required this.studentSubtopics,
    required this.$__typename,
  });

  factory TopicForStudent.fromGen(
          Query$GetSubtopicsForClassStudent$topicForStudent gen) =>
      TopicForStudent(
        id: gen.id,
        color: gen.color,
        title: gen.title,
        studentSubtopics:
            gen.studentSubtopics.map(StudentSubtopics.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String color;

  final String title;

  final List<StudentSubtopics> studentSubtopics;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        color,
        title,
        studentSubtopics,
        $__typename,
      ];
  TopicForStudent copyWith({
    String? id,
    String? color,
    String? title,
    List<StudentSubtopics>? studentSubtopics,
  }) =>
      TopicForStudent(
        id: id ?? this.id,
        color: color ?? this.color,
        title: title ?? this.title,
        studentSubtopics: studentSubtopics ?? this.studentSubtopics,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClass by ResponseClassBuilder
class GetSkillsForClassResponse with EquatableMixin {
  GetSkillsForClassResponse({
    required this.subtopicForClass,
    required this.classTopic,
    required this.$__typename,
  });

  factory GetSkillsForClassResponse.fromGen(Query$GetSkillsForClass gen) =>
      GetSkillsForClassResponse(
        subtopicForClass: SubtopicForClass.fromGen(gen.subtopicForClass),
        classTopic: ClassTopic.fromGen(gen.classTopic),
        $__typename: gen.$__typename,
      );

  final SubtopicForClass subtopicForClass;

  final ClassTopic classTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopicForClass,
        classTopic,
        $__typename,
      ];
  GetSkillsForClassResponse copyWith({
    SubtopicForClass? subtopicForClass,
    ClassTopic? classTopic,
  }) =>
      GetSkillsForClassResponse(
        subtopicForClass: subtopicForClass ?? this.subtopicForClass,
        classTopic: classTopic ?? this.classTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass by FieldClassBuilder
class SkillsProgressForClass with EquatableMixin {
  SkillsProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory SkillsProgressForClass.fromGen(
          Query$GetSkillsForClass$subtopicForClass$classSkills$skillsProgressForClass
              gen) =>
      SkillsProgressForClass(
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        progress,
        $__typename,
      ];
  SkillsProgressForClass copyWith({Progress? progress}) =>
      SkillsProgressForClass(
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClass$subtopicForClass$classSkills by FieldClassBuilder
class ClassSkills with EquatableMixin {
  ClassSkills({
    required this.id,
    required this.skillsProgressForClass,
    required this.flaggedForClass,
    required this.taughtForClass,
    required this.title,
    required this.headerTextForClass,
    required this.$__typename,
  });

  factory ClassSkills.fromGen(
          Query$GetSkillsForClass$subtopicForClass$classSkills gen) =>
      ClassSkills(
        id: gen.id,
        skillsProgressForClass:
            SkillsProgressForClass.fromGen(gen.skillsProgressForClass),
        flaggedForClass: gen.flaggedForClass,
        taughtForClass: gen.taughtForClass,
        title: gen.title,
        headerTextForClass: gen.headerTextForClass,
        $__typename: gen.$__typename,
      );

  final String id;

  final SkillsProgressForClass skillsProgressForClass;

  final bool flaggedForClass;

  final bool taughtForClass;

  final String title;

  final List<String> headerTextForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        skillsProgressForClass,
        flaggedForClass,
        taughtForClass,
        title,
        headerTextForClass,
        $__typename,
      ];
  ClassSkills copyWith({
    String? id,
    SkillsProgressForClass? skillsProgressForClass,
    bool? flaggedForClass,
    bool? taughtForClass,
    String? title,
    List<String>? headerTextForClass,
  }) =>
      ClassSkills(
        id: id ?? this.id,
        skillsProgressForClass:
            skillsProgressForClass ?? this.skillsProgressForClass,
        flaggedForClass: flaggedForClass ?? this.flaggedForClass,
        taughtForClass: taughtForClass ?? this.taughtForClass,
        title: title ?? this.title,
        headerTextForClass: headerTextForClass ?? this.headerTextForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClass$subtopicForClass by FieldClassBuilder
class SubtopicForClass with EquatableMixin {
  SubtopicForClass({
    required this.id,
    required this.classSkills,
    required this.$__typename,
  });

  factory SubtopicForClass.fromGen(
          Query$GetSkillsForClass$subtopicForClass gen) =>
      SubtopicForClass(
        id: gen.id,
        classSkills: gen.classSkills.map(ClassSkills.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<ClassSkills> classSkills;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        classSkills,
        $__typename,
      ];
  SubtopicForClass copyWith({
    String? id,
    List<ClassSkills>? classSkills,
  }) =>
      SubtopicForClass(
        id: id ?? this.id,
        classSkills: classSkills ?? this.classSkills,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClass$classTopic by FieldClassBuilder
class ClassTopic with EquatableMixin {
  ClassTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory ClassTopic.fromGen(Query$GetSkillsForClass$classTopic gen) =>
      ClassTopic(
        id: gen.id,
        color: gen.color,
        $__typename: gen.$__typename,
      );

  final String id;

  final String color;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        color,
        $__typename,
      ];
  ClassTopic copyWith({
    String? id,
    String? color,
  }) =>
      ClassTopic(
        id: id ?? this.id,
        color: color ?? this.color,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClassStudent by ResponseClassBuilder
class GetSkillsForClassStudentResponse with EquatableMixin {
  GetSkillsForClassStudentResponse({
    required this.subtopicForStudent,
    required this.studentTopic,
    required this.$__typename,
  });

  factory GetSkillsForClassStudentResponse.fromGen(
          Query$GetSkillsForClassStudent gen) =>
      GetSkillsForClassStudentResponse(
        subtopicForStudent: SubtopicForStudent.fromGen(gen.subtopicForStudent),
        studentTopic: StudentTopic.fromGen(gen.studentTopic),
        $__typename: gen.$__typename,
      );

  final SubtopicForStudent subtopicForStudent;

  final StudentTopic studentTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopicForStudent,
        studentTopic,
        $__typename,
      ];
  GetSkillsForClassStudentResponse copyWith({
    SubtopicForStudent? subtopicForStudent,
    StudentTopic? studentTopic,
  }) =>
      GetSkillsForClassStudentResponse(
        subtopicForStudent: subtopicForStudent ?? this.subtopicForStudent,
        studentTopic: studentTopic ?? this.studentTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills by FieldClassBuilder
class StudentSkills with EquatableMixin {
  StudentSkills({
    required this.id,
    required this.progress,
    required this.flaggedForClass,
    required this.taughtForClass,
    required this.title,
    required this.headerTextForStudent,
    required this.$__typename,
  });

  factory StudentSkills.fromGen(
          Query$GetSkillsForClassStudent$subtopicForStudent$studentSkills
              gen) =>
      StudentSkills(
        id: gen.id,
        progress: Progress.fromGen(gen.progress),
        flaggedForClass: gen.flaggedForClass,
        taughtForClass: gen.taughtForClass,
        title: gen.title,
        headerTextForStudent: gen.headerTextForStudent,
        $__typename: gen.$__typename,
      );

  final String id;

  final Progress progress;

  final bool flaggedForClass;

  final bool taughtForClass;

  final String title;

  final List<String> headerTextForStudent;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        progress,
        flaggedForClass,
        taughtForClass,
        title,
        headerTextForStudent,
        $__typename,
      ];
  StudentSkills copyWith({
    String? id,
    Progress? progress,
    bool? flaggedForClass,
    bool? taughtForClass,
    String? title,
    List<String>? headerTextForStudent,
  }) =>
      StudentSkills(
        id: id ?? this.id,
        progress: progress ?? this.progress,
        flaggedForClass: flaggedForClass ?? this.flaggedForClass,
        taughtForClass: taughtForClass ?? this.taughtForClass,
        title: title ?? this.title,
        headerTextForStudent: headerTextForStudent ?? this.headerTextForStudent,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClassStudent$subtopicForStudent by FieldClassBuilder
class SubtopicForStudent with EquatableMixin {
  SubtopicForStudent({
    required this.id,
    required this.studentSkills,
    required this.$__typename,
  });

  factory SubtopicForStudent.fromGen(
          Query$GetSkillsForClassStudent$subtopicForStudent gen) =>
      SubtopicForStudent(
        id: gen.id,
        studentSkills: gen.studentSkills.map(StudentSkills.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<StudentSkills> studentSkills;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        studentSkills,
        $__typename,
      ];
  SubtopicForStudent copyWith({
    String? id,
    List<StudentSkills>? studentSkills,
  }) =>
      SubtopicForStudent(
        id: id ?? this.id,
        studentSkills: studentSkills ?? this.studentSkills,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSkillsForClassStudent$studentTopic by FieldClassBuilder
class StudentTopic with EquatableMixin {
  StudentTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory StudentTopic.fromGen(
          Query$GetSkillsForClassStudent$studentTopic gen) =>
      StudentTopic(
        id: gen.id,
        color: gen.color,
        $__typename: gen.$__typename,
      );

  final String id;

  final String color;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        color,
        $__typename,
      ];
  StudentTopic copyWith({
    String? id,
    String? color,
  }) =>
      StudentTopic(
        id: id ?? this.id,
        color: color ?? this.color,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsIconAndTitleForClass by ResponseClassBuilder
class GetSubtopicsIconAndTitleForClassResponse with EquatableMixin {
  GetSubtopicsIconAndTitleForClassResponse({
    required this.mTopic,
    required this.$__typename,
  });

  factory GetSubtopicsIconAndTitleForClassResponse.fromGen(
          Query$GetSubtopicsIconAndTitleForClass gen) =>
      GetSubtopicsIconAndTitleForClassResponse(
        mTopic: MTopic.fromGen(gen.mTopic),
        $__typename: gen.$__typename,
      );

  final MTopic mTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        mTopic,
        $__typename,
      ];
  GetSubtopicsIconAndTitleForClassResponse copyWith({MTopic? mTopic}) =>
      GetSubtopicsIconAndTitleForClassResponse(
        mTopic: mTopic ?? this.mTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics by FieldClassBuilder
class MSubtopics with EquatableMixin {
  MSubtopics({
    required this.id,
    required this.title,
    required this.icon,
    required this.$__typename,
  });

  factory MSubtopics.fromGen(
          Query$GetSubtopicsIconAndTitleForClass$mTopic$mSubtopics gen) =>
      MSubtopics(
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
  MSubtopics copyWith({
    String? id,
    String? title,
    String? icon,
  }) =>
      MSubtopics(
        id: id ?? this.id,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsIconAndTitleForClass$mTopic by FieldClassBuilder
class MTopic with EquatableMixin {
  MTopic({
    required this.id,
    required this.mSubtopics,
    required this.$__typename,
  });

  factory MTopic.fromGen(Query$GetSubtopicsIconAndTitleForClass$mTopic gen) =>
      MTopic(
        id: gen.id,
        mSubtopics: gen.mSubtopics.map(MSubtopics.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<MSubtopics> mSubtopics;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        mSubtopics,
        $__typename,
      ];
  MTopic copyWith({
    String? id,
    List<MSubtopics>? mSubtopics,
  }) =>
      MTopic(
        id: id ?? this.id,
        mSubtopics: mSubtopics ?? this.mSubtopics,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForStudent by ResponseClassBuilder
class GetSubtopicsForStudentResponse with EquatableMixin {
  GetSubtopicsForStudentResponse({
    required this.getSubtopicForStudent,
    required this.$__typename,
  });

  factory GetSubtopicsForStudentResponse.fromGen(
          Query$GetSubtopicsForStudent gen) =>
      GetSubtopicsForStudentResponse(
        getSubtopicForStudent:
            GetSubtopicForStudent.fromGen(gen.getSubtopicForStudent),
        $__typename: gen.$__typename,
      );

  final GetSubtopicForStudent getSubtopicForStudent;

  final String $__typename;

  @override
  List<Object?> get props => [
        getSubtopicForStudent,
        $__typename,
      ];
  GetSubtopicsForStudentResponse copyWith(
          {GetSubtopicForStudent? getSubtopicForStudent}) =>
      GetSubtopicsForStudentResponse(
        getSubtopicForStudent:
            getSubtopicForStudent ?? this.getSubtopicForStudent,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser by FieldClassBuilder
class SubtopicsForUser with EquatableMixin {
  SubtopicsForUser({
    required this.id,
    required this.progress,
    required this.title,
    required this.icon,
    required this.state,
    required this.$__typename,
  });

  factory SubtopicsForUser.fromGen(
          Query$GetSubtopicsForStudent$getSubtopicForStudent$subtopicsForUser
              gen) =>
      SubtopicsForUser(
        id: gen.id,
        progress: Progress.fromGen(gen.progress),
        title: gen.title,
        icon: gen.icon,
        state: fromSubtopicStateGen(gen.state),
        $__typename: gen.$__typename,
      );

  final String id;

  final Progress progress;

  final String title;

  final String icon;

  final SubtopicState state;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        progress,
        title,
        icon,
        state,
        $__typename,
      ];
  SubtopicsForUser copyWith({
    String? id,
    Progress? progress,
    String? title,
    String? icon,
    SubtopicState? state,
  }) =>
      SubtopicsForUser(
        id: id ?? this.id,
        progress: progress ?? this.progress,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        state: state ?? this.state,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForStudent$getSubtopicForStudent by FieldClassBuilder
class GetSubtopicForStudent with EquatableMixin {
  GetSubtopicForStudent({
    required this.id,
    required this.title,
    required this.color,
    required this.subtopicsForUser,
    required this.$__typename,
  });

  factory GetSubtopicForStudent.fromGen(
          Query$GetSubtopicsForStudent$getSubtopicForStudent gen) =>
      GetSubtopicForStudent(
        id: gen.id,
        title: gen.title,
        color: gen.color,
        subtopicsForUser:
            gen.subtopicsForUser.map(SubtopicsForUser.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String color;

  final List<SubtopicsForUser> subtopicsForUser;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        color,
        subtopicsForUser,
        $__typename,
      ];
  GetSubtopicForStudent copyWith({
    String? id,
    String? title,
    String? color,
    List<SubtopicsForUser>? subtopicsForUser,
  }) =>
      GetSubtopicForStudent(
        id: id ?? this.id,
        title: title ?? this.title,
        color: color ?? this.color,
        subtopicsForUser: subtopicsForUser ?? this.subtopicsForUser,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopic by ResponseClassBuilder
class GetTopicResponse with EquatableMixin {
  GetTopicResponse({
    required this.topic,
    required this.$__typename,
  });

  factory GetTopicResponse.fromGen(Query$GetTopic gen) => GetTopicResponse(
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
  GetTopicResponse copyWith({Topic? topic}) => GetTopicResponse(
        topic: topic ?? this.topic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopic$topic by FieldClassBuilder
class Topic with EquatableMixin {
  Topic({
    required this.id,
    required this.emoji,
    required this.color,
    required this.title,
    required this.$__typename,
  });

  factory Topic.fromGen(Query$GetTopic$topic gen) => Topic(
        id: gen.id,
        emoji: gen.emoji,
        color: gen.color,
        title: gen.title,
        $__typename: gen.$__typename,
      );

  final String id;

  final String emoji;

  final String color;

  final String title;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        emoji,
        color,
        title,
        $__typename,
      ];
  Topic copyWith({
    String? id,
    String? emoji,
    String? color,
    String? title,
  }) =>
      Topic(
        id: id ?? this.id,
        emoji: emoji ?? this.emoji,
        color: color ?? this.color,
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicProgress by ResponseClassBuilder
class GetTopicProgressResponse with EquatableMixin {
  GetTopicProgressResponse({
    required this.topicProgress,
    required this.$__typename,
  });

  factory GetTopicProgressResponse.fromGen(Query$GetTopicProgress gen) =>
      GetTopicProgressResponse(
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
  GetTopicProgressResponse copyWith({TopicProgress? topicProgress}) =>
      GetTopicProgressResponse(
        topicProgress: topicProgress ?? this.topicProgress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicProgress$topicProgress by FieldClassBuilder
class TopicProgress with EquatableMixin {
  TopicProgress({
    required this.id,
    required this.progress,
    required this.$__typename,
  });

  factory TopicProgress.fromGen(Query$GetTopicProgress$topicProgress gen) =>
      TopicProgress(
        id: gen.id,
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final String id;

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        progress,
        $__typename,
      ];
  TopicProgress copyWith({
    String? id,
    Progress? progress,
  }) =>
      TopicProgress(
        id: id ?? this.id,
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicProgressForClass by ResponseClassBuilder
class GetTopicProgressForClassResponse with EquatableMixin {
  GetTopicProgressForClassResponse({
    required this.topicProgressForClassQuery,
    required this.$__typename,
  });

  factory GetTopicProgressForClassResponse.fromGen(
          Query$GetTopicProgressForClass gen) =>
      GetTopicProgressForClassResponse(
        topicProgressForClassQuery:
            TopicProgressForClassQuery.fromGen(gen.topicProgressForClassQuery),
        $__typename: gen.$__typename,
      );

  final TopicProgressForClassQuery topicProgressForClassQuery;

  final String $__typename;

  @override
  List<Object?> get props => [
        topicProgressForClassQuery,
        $__typename,
      ];
  GetTopicProgressForClassResponse copyWith(
          {TopicProgressForClassQuery? topicProgressForClassQuery}) =>
      GetTopicProgressForClassResponse(
        topicProgressForClassQuery:
            topicProgressForClassQuery ?? this.topicProgressForClassQuery,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass by FieldClassBuilder
class TopicProgressForClass with EquatableMixin {
  TopicProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory TopicProgressForClass.fromGen(
          Query$GetTopicProgressForClass$topicProgressForClassQuery$topicProgressForClass
              gen) =>
      TopicProgressForClass(
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        progress,
        $__typename,
      ];
  TopicProgressForClass copyWith({Progress? progress}) => TopicProgressForClass(
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicProgressForClass$topicProgressForClassQuery by FieldClassBuilder
class TopicProgressForClassQuery with EquatableMixin {
  TopicProgressForClassQuery({
    required this.id,
    required this.topicProgressForClass,
    required this.$__typename,
  });

  factory TopicProgressForClassQuery.fromGen(
          Query$GetTopicProgressForClass$topicProgressForClassQuery gen) =>
      TopicProgressForClassQuery(
        id: gen.id,
        topicProgressForClass:
            TopicProgressForClass.fromGen(gen.topicProgressForClass),
        $__typename: gen.$__typename,
      );

  final String id;

  final TopicProgressForClass topicProgressForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        topicProgressForClass,
        $__typename,
      ];
  TopicProgressForClassQuery copyWith({
    String? id,
    TopicProgressForClass? topicProgressForClass,
  }) =>
      TopicProgressForClassQuery(
        id: id ?? this.id,
        topicProgressForClass:
            topicProgressForClass ?? this.topicProgressForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopic by ResponseClassBuilder
class GetSubtopicResponse with EquatableMixin {
  GetSubtopicResponse({
    required this.subtopic,
    required this.skillTopic,
    required this.$__typename,
  });

  factory GetSubtopicResponse.fromGen(Query$GetSubtopic gen) =>
      GetSubtopicResponse(
        subtopic: Subtopic.fromGen(gen.subtopic),
        skillTopic: SkillTopic.fromGen(gen.skillTopic),
        $__typename: gen.$__typename,
      );

  final Subtopic subtopic;

  final SkillTopic skillTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopic,
        skillTopic,
        $__typename,
      ];
  GetSubtopicResponse copyWith({
    Subtopic? subtopic,
    SkillTopic? skillTopic,
  }) =>
      GetSubtopicResponse(
        subtopic: subtopic ?? this.subtopic,
        skillTopic: skillTopic ?? this.skillTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopic$subtopic by FieldClassBuilder
class Subtopic with EquatableMixin {
  Subtopic({
    required this.id,
    required this.icon,
    required this.title,
    required this.$__typename,
  });

  factory Subtopic.fromGen(Query$GetSubtopic$subtopic gen) => Subtopic(
        id: gen.id,
        icon: gen.icon,
        title: gen.title,
        $__typename: gen.$__typename,
      );

  final String id;

  final String icon;

  final String title;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        icon,
        title,
        $__typename,
      ];
  Subtopic copyWith({
    String? id,
    String? icon,
    String? title,
  }) =>
      Subtopic(
        id: id ?? this.id,
        icon: icon ?? this.icon,
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopic$skillTopic by FieldClassBuilder
class SkillTopic with EquatableMixin {
  SkillTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory SkillTopic.fromGen(Query$GetSubtopic$skillTopic gen) => SkillTopic(
        id: gen.id,
        color: gen.color,
        $__typename: gen.$__typename,
      );

  final String id;

  final String color;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        color,
        $__typename,
      ];
  SkillTopic copyWith({
    String? id,
    String? color,
  }) =>
      SkillTopic(
        id: id ?? this.id,
        color: color ?? this.color,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicState by ResponseClassBuilder
class GetSubtopicStateResponse with EquatableMixin {
  GetSubtopicStateResponse({
    required this.subtopicStateResult,
    required this.$__typename,
  });

  factory GetSubtopicStateResponse.fromGen(Query$GetSubtopicState gen) =>
      GetSubtopicStateResponse(
        subtopicStateResult:
            SubtopicStateResult.fromGen(gen.subtopicStateResult),
        $__typename: gen.$__typename,
      );

  final SubtopicStateResult subtopicStateResult;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopicStateResult,
        $__typename,
      ];
  GetSubtopicStateResponse copyWith(
          {SubtopicStateResult? subtopicStateResult}) =>
      GetSubtopicStateResponse(
        subtopicStateResult: subtopicStateResult ?? this.subtopicStateResult,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicState$subtopicStateResult by FieldClassBuilder
class SubtopicStateResult with EquatableMixin {
  SubtopicStateResult({
    required this.id,
    required this.state,
    required this.$__typename,
  });

  factory SubtopicStateResult.fromGen(
          Query$GetSubtopicState$subtopicStateResult gen) =>
      SubtopicStateResult(
        id: gen.id,
        state: fromSubtopicStateGen(gen.state),
        $__typename: gen.$__typename,
      );

  final String id;

  final SubtopicState state;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        state,
        $__typename,
      ];
  SubtopicStateResult copyWith({
    String? id,
    SubtopicState? state,
  }) =>
      SubtopicStateResult(
        id: id ?? this.id,
        state: state ?? this.state,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicStateForClass by ResponseClassBuilder
class GetSubtopicStateForClassResponse with EquatableMixin {
  GetSubtopicStateForClassResponse({
    required this.subtopicStateForClass,
    required this.$__typename,
  });

  factory GetSubtopicStateForClassResponse.fromGen(
          Query$GetSubtopicStateForClass gen) =>
      GetSubtopicStateForClassResponse(
        subtopicStateForClass:
            SubtopicStateForClass.fromGen(gen.subtopicStateForClass),
        $__typename: gen.$__typename,
      );

  final SubtopicStateForClass subtopicStateForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopicStateForClass,
        $__typename,
      ];
  GetSubtopicStateForClassResponse copyWith(
          {SubtopicStateForClass? subtopicStateForClass}) =>
      GetSubtopicStateForClassResponse(
        subtopicStateForClass:
            subtopicStateForClass ?? this.subtopicStateForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicStateForClass$subtopicStateForClass by FieldClassBuilder
class SubtopicStateForClass with EquatableMixin {
  SubtopicStateForClass({
    required this.id,
    required this.stateForClass,
    required this.$__typename,
  });

  factory SubtopicStateForClass.fromGen(
          Query$GetSubtopicStateForClass$subtopicStateForClass gen) =>
      SubtopicStateForClass(
        id: gen.id,
        stateForClass: fromSubtopicStateGen(gen.stateForClass),
        $__typename: gen.$__typename,
      );

  final String id;

  final SubtopicState stateForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        stateForClass,
        $__typename,
      ];
  SubtopicStateForClass copyWith({
    String? id,
    SubtopicState? stateForClass,
  }) =>
      SubtopicStateForClass(
        id: id ?? this.id,
        stateForClass: stateForClass ?? this.stateForClass,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicProgress by ResponseClassBuilder
class GetSubtopicProgressResponse with EquatableMixin {
  GetSubtopicProgressResponse({
    required this.subtopicProgress,
    required this.$__typename,
  });

  factory GetSubtopicProgressResponse.fromGen(Query$GetSubtopicProgress gen) =>
      GetSubtopicProgressResponse(
        subtopicProgress: SubtopicProgress.fromGen(gen.subtopicProgress),
        $__typename: gen.$__typename,
      );

  final SubtopicProgress subtopicProgress;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopicProgress,
        $__typename,
      ];
  GetSubtopicProgressResponse copyWith({SubtopicProgress? subtopicProgress}) =>
      GetSubtopicProgressResponse(
        subtopicProgress: subtopicProgress ?? this.subtopicProgress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicProgress$subtopicProgress by FieldClassBuilder
class SubtopicProgress with EquatableMixin {
  SubtopicProgress({
    required this.id,
    required this.progress,
    required this.$__typename,
  });

  factory SubtopicProgress.fromGen(
          Query$GetSubtopicProgress$subtopicProgress gen) =>
      SubtopicProgress(
        id: gen.id,
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final String id;

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        progress,
        $__typename,
      ];
  SubtopicProgress copyWith({
    String? id,
    Progress? progress,
  }) =>
      SubtopicProgress(
        id: id ?? this.id,
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicProgressForClass by ResponseClassBuilder
class GetSubtopicProgressForClassResponse with EquatableMixin {
  GetSubtopicProgressForClassResponse({
    required this.subtopicProgressForClassQuery,
    required this.$__typename,
  });

  factory GetSubtopicProgressForClassResponse.fromGen(
          Query$GetSubtopicProgressForClass gen) =>
      GetSubtopicProgressForClassResponse(
        subtopicProgressForClassQuery: SubtopicProgressForClassQuery.fromGen(
            gen.subtopicProgressForClassQuery),
        $__typename: gen.$__typename,
      );

  final SubtopicProgressForClassQuery subtopicProgressForClassQuery;

  final String $__typename;

  @override
  List<Object?> get props => [
        subtopicProgressForClassQuery,
        $__typename,
      ];
  GetSubtopicProgressForClassResponse copyWith(
          {SubtopicProgressForClassQuery? subtopicProgressForClassQuery}) =>
      GetSubtopicProgressForClassResponse(
        subtopicProgressForClassQuery:
            subtopicProgressForClassQuery ?? this.subtopicProgressForClassQuery,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass by FieldClassBuilder
class SubtopicProgressForClass with EquatableMixin {
  SubtopicProgressForClass({
    required this.progress,
    required this.$__typename,
  });

  factory SubtopicProgressForClass.fromGen(
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery$subtopicProgressForClass
              gen) =>
      SubtopicProgressForClass(
        progress: Progress.fromGen(gen.progress),
        $__typename: gen.$__typename,
      );

  final Progress progress;

  final String $__typename;

  @override
  List<Object?> get props => [
        progress,
        $__typename,
      ];
  SubtopicProgressForClass copyWith({Progress? progress}) =>
      SubtopicProgressForClass(
        progress: progress ?? this.progress,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery by FieldClassBuilder
class SubtopicProgressForClassQuery with EquatableMixin {
  SubtopicProgressForClassQuery({
    required this.id,
    required this.subtopicProgressForClass,
    required this.$__typename,
  });

  factory SubtopicProgressForClassQuery.fromGen(
          Query$GetSubtopicProgressForClass$subtopicProgressForClassQuery
              gen) =>
      SubtopicProgressForClassQuery(
        id: gen.id,
        subtopicProgressForClass:
            SubtopicProgressForClass.fromGen(gen.subtopicProgressForClass),
        $__typename: gen.$__typename,
      );

  final String id;

  final SubtopicProgressForClass subtopicProgressForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        subtopicProgressForClass,
        $__typename,
      ];
  SubtopicProgressForClassQuery copyWith({
    String? id,
    SubtopicProgressForClass? subtopicProgressForClass,
  }) =>
      SubtopicProgressForClassQuery(
        id: id ?? this.id,
        subtopicProgressForClass:
            subtopicProgressForClass ?? this.subtopicProgressForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$TeachSkillForClass by ResponseClassBuilder
class TeachSkillForClassResponse with EquatableMixin {
  TeachSkillForClassResponse({
    required this.teachSkillForClass,
    required this.$__typename,
  });

  factory TeachSkillForClassResponse.fromGen(Mutation$TeachSkillForClass gen) =>
      TeachSkillForClassResponse(
        teachSkillForClass: TeachSkillForClass.fromGen(gen.teachSkillForClass),
        $__typename: gen.$__typename,
      );

  final TeachSkillForClass teachSkillForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        teachSkillForClass,
        $__typename,
      ];
  TeachSkillForClassResponse copyWith(
          {TeachSkillForClass? teachSkillForClass}) =>
      TeachSkillForClassResponse(
        teachSkillForClass: teachSkillForClass ?? this.teachSkillForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$TeachSkillForClass$teachSkillForClass by FieldClassBuilder
class TeachSkillForClass with EquatableMixin {
  TeachSkillForClass({
    required this.id,
    required this.taughtForClass,
    required this.$__typename,
  });

  factory TeachSkillForClass.fromGen(
          Mutation$TeachSkillForClass$teachSkillForClass gen) =>
      TeachSkillForClass(
        id: gen.id,
        taughtForClass: gen.taughtForClass,
        $__typename: gen.$__typename,
      );

  final String id;

  final bool taughtForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        taughtForClass,
        $__typename,
      ];
  TeachSkillForClass copyWith({
    String? id,
    bool? taughtForClass,
  }) =>
      TeachSkillForClass(
        id: id ?? this.id,
        taughtForClass: taughtForClass ?? this.taughtForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UnteachSkillForClass by ResponseClassBuilder
class UnteachSkillForClassResponse with EquatableMixin {
  UnteachSkillForClassResponse({
    required this.unteachSkillForClass,
    required this.$__typename,
  });

  factory UnteachSkillForClassResponse.fromGen(
          Mutation$UnteachSkillForClass gen) =>
      UnteachSkillForClassResponse(
        unteachSkillForClass:
            UnteachSkillForClass.fromGen(gen.unteachSkillForClass),
        $__typename: gen.$__typename,
      );

  final UnteachSkillForClass unteachSkillForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        unteachSkillForClass,
        $__typename,
      ];
  UnteachSkillForClassResponse copyWith(
          {UnteachSkillForClass? unteachSkillForClass}) =>
      UnteachSkillForClassResponse(
        unteachSkillForClass: unteachSkillForClass ?? this.unteachSkillForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UnteachSkillForClass$unteachSkillForClass by FieldClassBuilder
class UnteachSkillForClass with EquatableMixin {
  UnteachSkillForClass({
    required this.id,
    required this.taughtForClass,
    required this.$__typename,
  });

  factory UnteachSkillForClass.fromGen(
          Mutation$UnteachSkillForClass$unteachSkillForClass gen) =>
      UnteachSkillForClass(
        id: gen.id,
        taughtForClass: gen.taughtForClass,
        $__typename: gen.$__typename,
      );

  final String id;

  final bool taughtForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        taughtForClass,
        $__typename,
      ];
  UnteachSkillForClass copyWith({
    String? id,
    bool? taughtForClass,
  }) =>
      UnteachSkillForClass(
        id: id ?? this.id,
        taughtForClass: taughtForClass ?? this.taughtForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$FlagSkillForClass by ResponseClassBuilder
class FlagSkillForClassResponse with EquatableMixin {
  FlagSkillForClassResponse({
    required this.flagSkillForClass,
    required this.$__typename,
  });

  factory FlagSkillForClassResponse.fromGen(Mutation$FlagSkillForClass gen) =>
      FlagSkillForClassResponse(
        flagSkillForClass: FlagSkillForClass.fromGen(gen.flagSkillForClass),
        $__typename: gen.$__typename,
      );

  final FlagSkillForClass flagSkillForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        flagSkillForClass,
        $__typename,
      ];
  FlagSkillForClassResponse copyWith({FlagSkillForClass? flagSkillForClass}) =>
      FlagSkillForClassResponse(
        flagSkillForClass: flagSkillForClass ?? this.flagSkillForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$FlagSkillForClass$flagSkillForClass by FieldClassBuilder
class FlagSkillForClass with EquatableMixin {
  FlagSkillForClass({
    required this.id,
    required this.flaggedForClass,
    required this.$__typename,
  });

  factory FlagSkillForClass.fromGen(
          Mutation$FlagSkillForClass$flagSkillForClass gen) =>
      FlagSkillForClass(
        id: gen.id,
        flaggedForClass: gen.flaggedForClass,
        $__typename: gen.$__typename,
      );

  final String id;

  final bool flaggedForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        flaggedForClass,
        $__typename,
      ];
  FlagSkillForClass copyWith({
    String? id,
    bool? flaggedForClass,
  }) =>
      FlagSkillForClass(
        id: id ?? this.id,
        flaggedForClass: flaggedForClass ?? this.flaggedForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UnflagSkillForClass by ResponseClassBuilder
class UnflagSkillForClassResponse with EquatableMixin {
  UnflagSkillForClassResponse({
    required this.unflagSkillForClass,
    required this.$__typename,
  });

  factory UnflagSkillForClassResponse.fromGen(
          Mutation$UnflagSkillForClass gen) =>
      UnflagSkillForClassResponse(
        unflagSkillForClass:
            UnflagSkillForClass.fromGen(gen.unflagSkillForClass),
        $__typename: gen.$__typename,
      );

  final UnflagSkillForClass unflagSkillForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        unflagSkillForClass,
        $__typename,
      ];
  UnflagSkillForClassResponse copyWith(
          {UnflagSkillForClass? unflagSkillForClass}) =>
      UnflagSkillForClassResponse(
        unflagSkillForClass: unflagSkillForClass ?? this.unflagSkillForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$UnflagSkillForClass$unflagSkillForClass by FieldClassBuilder
class UnflagSkillForClass with EquatableMixin {
  UnflagSkillForClass({
    required this.id,
    required this.flaggedForClass,
    required this.$__typename,
  });

  factory UnflagSkillForClass.fromGen(
          Mutation$UnflagSkillForClass$unflagSkillForClass gen) =>
      UnflagSkillForClass(
        id: gen.id,
        flaggedForClass: gen.flaggedForClass,
        $__typename: gen.$__typename,
      );

  final String id;

  final bool flaggedForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        flaggedForClass,
        $__typename,
      ];
  UnflagSkillForClass copyWith({
    String? id,
    bool? flaggedForClass,
  }) =>
      UnflagSkillForClass(
        id: id ?? this.id,
        flaggedForClass: flaggedForClass ?? this.flaggedForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$SetSubtopicStateForClass by ResponseClassBuilder
class SetSubtopicStateForClassResponse with EquatableMixin {
  SetSubtopicStateForClassResponse({
    required this.setSubtopicStateForClass,
    required this.$__typename,
  });

  factory SetSubtopicStateForClassResponse.fromGen(
          Mutation$SetSubtopicStateForClass gen) =>
      SetSubtopicStateForClassResponse(
        setSubtopicStateForClass:
            SetSubtopicStateForClass.fromGen(gen.setSubtopicStateForClass),
        $__typename: gen.$__typename,
      );

  final SetSubtopicStateForClass setSubtopicStateForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        setSubtopicStateForClass,
        $__typename,
      ];
  SetSubtopicStateForClassResponse copyWith(
          {SetSubtopicStateForClass? setSubtopicStateForClass}) =>
      SetSubtopicStateForClassResponse(
        setSubtopicStateForClass:
            setSubtopicStateForClass ?? this.setSubtopicStateForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$SetSubtopicStateForClass$setSubtopicStateForClass by FieldClassBuilder
class SetSubtopicStateForClass with EquatableMixin {
  SetSubtopicStateForClass({
    required this.id,
    required this.stateForClass,
    required this.$__typename,
  });

  factory SetSubtopicStateForClass.fromGen(
          Mutation$SetSubtopicStateForClass$setSubtopicStateForClass gen) =>
      SetSubtopicStateForClass(
        id: gen.id,
        stateForClass: fromSubtopicStateGen(gen.stateForClass),
        $__typename: gen.$__typename,
      );

  final String id;

  final SubtopicState stateForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        stateForClass,
        $__typename,
      ];
  SetSubtopicStateForClass copyWith({
    String? id,
    SubtopicState? stateForClass,
  }) =>
      SetSubtopicStateForClass(
        id: id ?? this.id,
        stateForClass: stateForClass ?? this.stateForClass,
        $__typename: $__typename,
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

// Sanitized Variables$Query$GetTopicsForClassStudent by ArgsClassBuilder
class GetTopicsForClassStudentArgs with EquatableMixin {
  GetTopicsForClassStudentArgs({required this.classId});

  final String classId;

  @override
  List<Object?> get props => [classId];
  Variables$Query$GetTopicsForClassStudent toGen() =>
      Variables$Query$GetTopicsForClassStudent(classId: classId);
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

// Sanitized Variables$Query$GetSubtopicsForClassStudent by ArgsClassBuilder
class GetSubtopicsForClassStudentArgs with EquatableMixin {
  GetSubtopicsForClassStudentArgs({
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
  Variables$Query$GetSubtopicsForClassStudent toGen() =>
      Variables$Query$GetSubtopicsForClassStudent(
        classId: classId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$GetSkillsForClass by ArgsClassBuilder
class GetSkillsForClassArgs with EquatableMixin {
  GetSkillsForClassArgs({
    required this.classId,
    required this.subtopicId,
    required this.topicId,
  });

  final String classId;

  final String subtopicId;

  final String topicId;

  @override
  List<Object?> get props => [
        classId,
        subtopicId,
        topicId,
      ];
  Variables$Query$GetSkillsForClass toGen() =>
      Variables$Query$GetSkillsForClass(
        classId: classId,
        subtopicId: subtopicId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$GetSkillsForClassStudent by ArgsClassBuilder
class GetSkillsForClassStudentArgs with EquatableMixin {
  GetSkillsForClassStudentArgs({
    required this.classId,
    required this.subtopicId,
    required this.topicId,
  });

  final String classId;

  final String subtopicId;

  final String topicId;

  @override
  List<Object?> get props => [
        classId,
        subtopicId,
        topicId,
      ];
  Variables$Query$GetSkillsForClassStudent toGen() =>
      Variables$Query$GetSkillsForClassStudent(
        classId: classId,
        subtopicId: subtopicId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$GetSubtopicsIconAndTitleForClass by ArgsClassBuilder
class GetSubtopicsIconAndTitleForClassArgs with EquatableMixin {
  GetSubtopicsIconAndTitleForClassArgs({
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
  Variables$Query$GetSubtopicsIconAndTitleForClass toGen() =>
      Variables$Query$GetSubtopicsIconAndTitleForClass(
        classId: classId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$GetSubtopicsForStudent by ArgsClassBuilder
class GetSubtopicsForStudentArgs with EquatableMixin {
  GetSubtopicsForStudentArgs({required this.topicId});

  final String topicId;

  @override
  List<Object?> get props => [topicId];
  Variables$Query$GetSubtopicsForStudent toGen() =>
      Variables$Query$GetSubtopicsForStudent(topicId: topicId);
}

// Sanitized Variables$Query$GetTopic by ArgsClassBuilder
class GetTopicArgs with EquatableMixin {
  GetTopicArgs({required this.topicId});

  final String topicId;

  @override
  List<Object?> get props => [topicId];
  Variables$Query$GetTopic toGen() =>
      Variables$Query$GetTopic(topicId: topicId);
}

// Sanitized Variables$Query$GetTopicProgress by ArgsClassBuilder
class GetTopicProgressArgs with EquatableMixin {
  GetTopicProgressArgs({required this.topicId});

  final String topicId;

  @override
  List<Object?> get props => [topicId];
  Variables$Query$GetTopicProgress toGen() =>
      Variables$Query$GetTopicProgress(topicId: topicId);
}

// Sanitized Variables$Query$GetTopicProgressForClass by ArgsClassBuilder
class GetTopicProgressForClassArgs with EquatableMixin {
  GetTopicProgressForClassArgs({
    required this.topicId,
    required this.classId,
  });

  final String topicId;

  final String classId;

  @override
  List<Object?> get props => [
        topicId,
        classId,
      ];
  Variables$Query$GetTopicProgressForClass toGen() =>
      Variables$Query$GetTopicProgressForClass(
        topicId: topicId,
        classId: classId,
      );
}

// Sanitized Variables$Query$GetSubtopic by ArgsClassBuilder
class GetSubtopicArgs with EquatableMixin {
  GetSubtopicArgs({
    required this.subtopicId,
    required this.topicId,
  });

  final String subtopicId;

  final String topicId;

  @override
  List<Object?> get props => [
        subtopicId,
        topicId,
      ];
  Variables$Query$GetSubtopic toGen() => Variables$Query$GetSubtopic(
        subtopicId: subtopicId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$GetSubtopicState by ArgsClassBuilder
class GetSubtopicStateArgs with EquatableMixin {
  GetSubtopicStateArgs({required this.subtopicId});

  final String subtopicId;

  @override
  List<Object?> get props => [subtopicId];
  Variables$Query$GetSubtopicState toGen() =>
      Variables$Query$GetSubtopicState(subtopicId: subtopicId);
}

// Sanitized Variables$Query$GetSubtopicStateForClass by ArgsClassBuilder
class GetSubtopicStateForClassArgs with EquatableMixin {
  GetSubtopicStateForClassArgs({
    required this.subtopicId,
    required this.stateForClassId,
  });

  final String subtopicId;

  final String stateForClassId;

  @override
  List<Object?> get props => [
        subtopicId,
        stateForClassId,
      ];
  Variables$Query$GetSubtopicStateForClass toGen() =>
      Variables$Query$GetSubtopicStateForClass(
        subtopicId: subtopicId,
        stateForClassId: stateForClassId,
      );
}

// Sanitized Variables$Query$GetSubtopicProgress by ArgsClassBuilder
class GetSubtopicProgressArgs with EquatableMixin {
  GetSubtopicProgressArgs({required this.subtopicId});

  final String subtopicId;

  @override
  List<Object?> get props => [subtopicId];
  Variables$Query$GetSubtopicProgress toGen() =>
      Variables$Query$GetSubtopicProgress(subtopicId: subtopicId);
}

// Sanitized Variables$Query$GetSubtopicProgressForClass by ArgsClassBuilder
class GetSubtopicProgressForClassArgs with EquatableMixin {
  GetSubtopicProgressForClassArgs({
    required this.subtopicId,
    required this.classId,
  });

  final String subtopicId;

  final String classId;

  @override
  List<Object?> get props => [
        subtopicId,
        classId,
      ];
  Variables$Query$GetSubtopicProgressForClass toGen() =>
      Variables$Query$GetSubtopicProgressForClass(
        subtopicId: subtopicId,
        classId: classId,
      );
}

// Sanitized Variables$Mutation$TeachSkillForClass by ArgsClassBuilder
class TeachSkillForClassArgs with EquatableMixin {
  TeachSkillForClassArgs({
    required this.classId,
    required this.skillId,
  });

  final String classId;

  final String skillId;

  @override
  List<Object?> get props => [
        classId,
        skillId,
      ];
  Variables$Mutation$TeachSkillForClass toGen() =>
      Variables$Mutation$TeachSkillForClass(
        classId: classId,
        skillId: skillId,
      );
}

// Sanitized Variables$Mutation$UnteachSkillForClass by ArgsClassBuilder
class UnteachSkillForClassArgs with EquatableMixin {
  UnteachSkillForClassArgs({
    required this.classId,
    required this.skillId,
  });

  final String classId;

  final String skillId;

  @override
  List<Object?> get props => [
        classId,
        skillId,
      ];
  Variables$Mutation$UnteachSkillForClass toGen() =>
      Variables$Mutation$UnteachSkillForClass(
        classId: classId,
        skillId: skillId,
      );
}

// Sanitized Variables$Mutation$FlagSkillForClass by ArgsClassBuilder
class FlagSkillForClassArgs with EquatableMixin {
  FlagSkillForClassArgs({
    required this.classId,
    required this.skillId,
  });

  final String classId;

  final String skillId;

  @override
  List<Object?> get props => [
        classId,
        skillId,
      ];
  Variables$Mutation$FlagSkillForClass toGen() =>
      Variables$Mutation$FlagSkillForClass(
        classId: classId,
        skillId: skillId,
      );
}

// Sanitized Variables$Mutation$UnflagSkillForClass by ArgsClassBuilder
class UnflagSkillForClassArgs with EquatableMixin {
  UnflagSkillForClassArgs({
    required this.classId,
    required this.skillId,
  });

  final String classId;

  final String skillId;

  @override
  List<Object?> get props => [
        classId,
        skillId,
      ];
  Variables$Mutation$UnflagSkillForClass toGen() =>
      Variables$Mutation$UnflagSkillForClass(
        classId: classId,
        skillId: skillId,
      );
}

// Sanitized Variables$Mutation$SetSubtopicStateForClass by ArgsClassBuilder
class SetSubtopicStateForClassArgs with EquatableMixin {
  SetSubtopicStateForClassArgs({
    required this.classId,
    required this.subtopicId,
    required this.state,
  });

  final String classId;

  final String subtopicId;

  final SubtopicState state;

  @override
  List<Object?> get props => [
        classId,
        subtopicId,
        state,
      ];
  Variables$Mutation$SetSubtopicStateForClass toGen() =>
      Variables$Mutation$SetSubtopicStateForClass(
        classId: classId,
        subtopicId: subtopicId,
        state: state.toGen(),
      );
}

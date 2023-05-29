// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SanitizerGenerator
// **************************************************************************

import 'package:equatable/equatable.dart';
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.dart';
import 'package:schema/schema.dart'; // Sanitized Query$GetTopicsForYear by ResponseClassBuilder

class GetTopicsForYearResponse with EquatableMixin {
  GetTopicsForYearResponse({
    required this.allTopic,
    required this.$__typename,
  });

  factory GetTopicsForYearResponse.fromGen(Query$GetTopicsForYear gen) =>
      GetTopicsForYearResponse(
        allTopic: AllTopic.fromGen(gen.allTopic),
        $__typename: gen.$__typename,
      );

  final AllTopic allTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        allTopic,
        $__typename,
      ];
  GetTopicsForYearResponse copyWith({AllTopic? allTopic}) =>
      GetTopicsForYearResponse(
        allTopic: allTopic ?? this.allTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForYear$allTopic$topics by FieldClassBuilder
class Topics with EquatableMixin {
  Topics({
    required this.id,
    required this.color,
    required this.title,
    required this.emoji,
    required this.$__typename,
  });

  factory Topics.fromGen(Query$GetTopicsForYear$allTopic$topics gen) => Topics(
        id: gen.id,
        color: gen.color,
        title: gen.title,
        emoji: gen.emoji,
        $__typename: gen.$__typename,
      );

  final String id;

  final String color;

  final String title;

  final String emoji;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        color,
        title,
        emoji,
        $__typename,
      ];
  Topics copyWith({
    String? id,
    String? color,
    String? title,
    String? emoji,
  }) =>
      Topics(
        id: id ?? this.id,
        color: color ?? this.color,
        title: title ?? this.title,
        emoji: emoji ?? this.emoji,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicsForYear$allTopic by FieldClassBuilder
class AllTopic with EquatableMixin {
  AllTopic({
    required this.id,
    required this.topics,
    required this.$__typename,
  });

  factory AllTopic.fromGen(Query$GetTopicsForYear$allTopic gen) => AllTopic(
        id: gen.id,
        topics: gen.topics.map(Topics.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<Topics> topics;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        topics,
        $__typename,
      ];
  AllTopic copyWith({
    String? id,
    List<Topics>? topics,
  }) =>
      AllTopic(
        id: id ?? this.id,
        topics: topics ?? this.topics,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicYears by ResponseClassBuilder
class GetTopicYearsResponse with EquatableMixin {
  GetTopicYearsResponse({
    required this.tTopic,
    required this.$__typename,
  });

  factory GetTopicYearsResponse.fromGen(Query$GetTopicYears gen) =>
      GetTopicYearsResponse(
        tTopic: TTopic.fromGen(gen.tTopic),
        $__typename: gen.$__typename,
      );

  final TTopic tTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        tTopic,
        $__typename,
      ];
  GetTopicYearsResponse copyWith({TTopic? tTopic}) => GetTopicYearsResponse(
        tTopic: tTopic ?? this.tTopic,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Year by FieldClassBuilder
class Year with EquatableMixin {
  Year({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Year.fromGen(Fragment$Year gen) => Year(
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
  Year copyWith({
    String? id,
    String? title,
  }) =>
      Year(
        id: id ?? this.id,
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetTopicYears$tTopic by FieldClassBuilder
class TTopic with EquatableMixin {
  TTopic({
    required this.id,
    required this.years,
    required this.$__typename,
  });

  factory TTopic.fromGen(Query$GetTopicYears$tTopic gen) => TTopic(
        id: gen.id,
        years: gen.years.map(Year.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<Year> years;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        years,
        $__typename,
      ];
  TTopic copyWith({
    String? id,
    List<Year>? years,
  }) =>
      TTopic(
        id: id ?? this.id,
        years: years ?? this.years,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForYear by ResponseClassBuilder
class GetSubtopicsForYearResponse with EquatableMixin {
  GetSubtopicsForYearResponse({
    required this.sTopic,
    required this.$__typename,
  });

  factory GetSubtopicsForYearResponse.fromGen(Query$GetSubtopicsForYear gen) =>
      GetSubtopicsForYearResponse(
        sTopic: STopic.fromGen(gen.sTopic),
        $__typename: gen.$__typename,
      );

  final STopic sTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        sTopic,
        $__typename,
      ];
  GetSubtopicsForYearResponse copyWith({STopic? sTopic}) =>
      GetSubtopicsForYearResponse(
        sTopic: sTopic ?? this.sTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForYear$sTopic$subtopicsForYear by FieldClassBuilder
class SubtopicsForYear with EquatableMixin {
  SubtopicsForYear({
    required this.id,
    required this.title,
    required this.icon,
    required this.totalSkills,
    required this.years,
    required this.$__typename,
  });

  factory SubtopicsForYear.fromGen(
          Query$GetSubtopicsForYear$sTopic$subtopicsForYear gen) =>
      SubtopicsForYear(
        id: gen.id,
        title: gen.title,
        icon: gen.icon,
        totalSkills: gen.totalSkills,
        years: gen.years.map(Year.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final String icon;

  final int totalSkills;

  final List<Year> years;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        icon,
        totalSkills,
        years,
        $__typename,
      ];
  SubtopicsForYear copyWith({
    String? id,
    String? title,
    String? icon,
    int? totalSkills,
    List<Year>? years,
  }) =>
      SubtopicsForYear(
        id: id ?? this.id,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        totalSkills: totalSkills ?? this.totalSkills,
        years: years ?? this.years,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicsForYear$sTopic by FieldClassBuilder
class STopic with EquatableMixin {
  STopic({
    required this.id,
    required this.color,
    required this.subtopicsForYear,
    required this.$__typename,
  });

  factory STopic.fromGen(Query$GetSubtopicsForYear$sTopic gen) => STopic(
        id: gen.id,
        color: gen.color,
        subtopicsForYear:
            gen.subtopicsForYear.map(SubtopicsForYear.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String color;

  final List<SubtopicsForYear> subtopicsForYear;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        color,
        subtopicsForYear,
        $__typename,
      ];
  STopic copyWith({
    String? id,
    String? color,
    List<SubtopicsForYear>? subtopicsForYear,
  }) =>
      STopic(
        id: id ?? this.id,
        color: color ?? this.color,
        subtopicsForYear: subtopicsForYear ?? this.subtopicsForYear,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicYear by ResponseClassBuilder
class GetSubtopicYearResponse with EquatableMixin {
  GetSubtopicYearResponse({
    required this.yearSubtopic,
    required this.$__typename,
  });

  factory GetSubtopicYearResponse.fromGen(Query$GetSubtopicYear gen) =>
      GetSubtopicYearResponse(
        yearSubtopic: YearSubtopic.fromGen(gen.yearSubtopic),
        $__typename: gen.$__typename,
      );

  final YearSubtopic yearSubtopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        yearSubtopic,
        $__typename,
      ];
  GetSubtopicYearResponse copyWith({YearSubtopic? yearSubtopic}) =>
      GetSubtopicYearResponse(
        yearSubtopic: yearSubtopic ?? this.yearSubtopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetSubtopicYear$yearSubtopic by FieldClassBuilder
class YearSubtopic with EquatableMixin {
  YearSubtopic({
    required this.id,
    required this.years,
    required this.$__typename,
  });

  factory YearSubtopic.fromGen(Query$GetSubtopicYear$yearSubtopic gen) =>
      YearSubtopic(
        id: gen.id,
        years: gen.years.map(Year.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<Year> years;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        years,
        $__typename,
      ];
  YearSubtopic copyWith({
    String? id,
    List<Year>? years,
  }) =>
      YearSubtopic(
        id: id ?? this.id,
        years: years ?? this.years,
        $__typename: $__typename,
      );
}

// Sanitized Query$SkillsForYear by ResponseClassBuilder
class SkillsForYearResponse with EquatableMixin {
  SkillsForYearResponse({
    required this.skSubtopic,
    required this.yearTopic,
    required this.$__typename,
  });

  factory SkillsForYearResponse.fromGen(Query$SkillsForYear gen) =>
      SkillsForYearResponse(
        skSubtopic: SkSubtopic.fromGen(gen.skSubtopic),
        yearTopic: YearTopic.fromGen(gen.yearTopic),
        $__typename: gen.$__typename,
      );

  final SkSubtopic skSubtopic;

  final YearTopic yearTopic;

  final String $__typename;

  @override
  List<Object?> get props => [
        skSubtopic,
        yearTopic,
        $__typename,
      ];
  SkillsForYearResponse copyWith({
    SkSubtopic? skSubtopic,
    YearTopic? yearTopic,
  }) =>
      SkillsForYearResponse(
        skSubtopic: skSubtopic ?? this.skSubtopic,
        yearTopic: yearTopic ?? this.yearTopic,
        $__typename: $__typename,
      );
}

// Sanitized Query$SkillsForYear$skSubtopic$skillsForYear by FieldClassBuilder
class SkillsForYear with EquatableMixin {
  SkillsForYear({
    required this.id,
    required this.title,
    required this.headerTextForYear,
    required this.years,
    required this.$__typename,
  });

  factory SkillsForYear.fromGen(
          Query$SkillsForYear$skSubtopic$skillsForYear gen) =>
      SkillsForYear(
        id: gen.id,
        title: gen.title,
        headerTextForYear: gen.headerTextForYear,
        years: gen.years.map(Year.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String title;

  final List<String> headerTextForYear;

  final List<Year> years;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        title,
        headerTextForYear,
        years,
        $__typename,
      ];
  SkillsForYear copyWith({
    String? id,
    String? title,
    List<String>? headerTextForYear,
    List<Year>? years,
  }) =>
      SkillsForYear(
        id: id ?? this.id,
        title: title ?? this.title,
        headerTextForYear: headerTextForYear ?? this.headerTextForYear,
        years: years ?? this.years,
        $__typename: $__typename,
      );
}

// Sanitized Query$SkillsForYear$skSubtopic by FieldClassBuilder
class SkSubtopic with EquatableMixin {
  SkSubtopic({
    required this.id,
    required this.skillsForYear,
    required this.$__typename,
  });

  factory SkSubtopic.fromGen(Query$SkillsForYear$skSubtopic gen) => SkSubtopic(
        id: gen.id,
        skillsForYear: gen.skillsForYear.map(SkillsForYear.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<SkillsForYear> skillsForYear;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        skillsForYear,
        $__typename,
      ];
  SkSubtopic copyWith({
    String? id,
    List<SkillsForYear>? skillsForYear,
  }) =>
      SkSubtopic(
        id: id ?? this.id,
        skillsForYear: skillsForYear ?? this.skillsForYear,
        $__typename: $__typename,
      );
}

// Sanitized Query$SkillsForYear$yearTopic by FieldClassBuilder
class YearTopic with EquatableMixin {
  YearTopic({
    required this.id,
    required this.color,
    required this.$__typename,
  });

  factory YearTopic.fromGen(Query$SkillsForYear$yearTopic gen) => YearTopic(
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
  YearTopic copyWith({
    String? id,
    String? color,
  }) =>
      YearTopic(
        id: id ?? this.id,
        color: color ?? this.color,
        $__typename: $__typename,
      );
}

// Sanitized Query$AllYears by ResponseClassBuilder
class AllYearsResponse with EquatableMixin {
  AllYearsResponse({
    required this.allYears,
    required this.$__typename,
  });

  factory AllYearsResponse.fromGen(Query$AllYears gen) => AllYearsResponse(
        allYears: gen.allYears.map(Year.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<Year> allYears;

  final String $__typename;

  @override
  List<Object?> get props => [
        allYears,
        $__typename,
      ];
  AllYearsResponse copyWith({List<Year>? allYears}) => AllYearsResponse(
        allYears: allYears ?? this.allYears,
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
    required this.totalSkills,
    required this.years,
    required this.$__typename,
  });

  factory Subtopic.fromGen(Query$GetSubtopic$subtopic gen) => Subtopic(
        id: gen.id,
        icon: gen.icon,
        title: gen.title,
        totalSkills: gen.totalSkills,
        years: gen.years.map(Year.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final String icon;

  final String title;

  final int totalSkills;

  final List<Year> years;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        icon,
        title,
        totalSkills,
        years,
        $__typename,
      ];
  Subtopic copyWith({
    String? id,
    String? icon,
    String? title,
    int? totalSkills,
    List<Year>? years,
  }) =>
      Subtopic(
        id: id ?? this.id,
        icon: icon ?? this.icon,
        title: title ?? this.title,
        totalSkills: totalSkills ?? this.totalSkills,
        years: years ?? this.years,
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

// Sanitized Variables$Query$GetTopicsForYear by ArgsClassBuilder
class GetTopicsForYearArgs with EquatableMixin {
  GetTopicsForYearArgs({required this.yearId});

  final String yearId;

  @override
  List<Object?> get props => [yearId];
  Variables$Query$GetTopicsForYear toGen() =>
      Variables$Query$GetTopicsForYear(yearId: yearId);
}

// Sanitized Variables$Query$GetTopicYears by ArgsClassBuilder
class GetTopicYearsArgs with EquatableMixin {
  GetTopicYearsArgs({required this.topicId});

  final String topicId;

  @override
  List<Object?> get props => [topicId];
  Variables$Query$GetTopicYears toGen() =>
      Variables$Query$GetTopicYears(topicId: topicId);
}

// Sanitized Variables$Query$GetSubtopicsForYear by ArgsClassBuilder
class GetSubtopicsForYearArgs with EquatableMixin {
  GetSubtopicsForYearArgs({
    required this.yearId,
    required this.topicId,
  });

  final String yearId;

  final String topicId;

  @override
  List<Object?> get props => [
        yearId,
        topicId,
      ];
  Variables$Query$GetSubtopicsForYear toGen() =>
      Variables$Query$GetSubtopicsForYear(
        yearId: yearId,
        topicId: topicId,
      );
}

// Sanitized Variables$Query$GetSubtopicYear by ArgsClassBuilder
class GetSubtopicYearArgs with EquatableMixin {
  GetSubtopicYearArgs({required this.subtopicId});

  final String subtopicId;

  @override
  List<Object?> get props => [subtopicId];
  Variables$Query$GetSubtopicYear toGen() =>
      Variables$Query$GetSubtopicYear(subtopicId: subtopicId);
}

// Sanitized Variables$Query$SkillsForYear by ArgsClassBuilder
class SkillsForYearArgs with EquatableMixin {
  SkillsForYearArgs({
    required this.yearId,
    required this.topicId,
    required this.subtopicId,
  });

  final String yearId;

  final String topicId;

  final String subtopicId;

  @override
  List<Object?> get props => [
        yearId,
        topicId,
        subtopicId,
      ];
  Variables$Query$SkillsForYear toGen() => Variables$Query$SkillsForYear(
        yearId: yearId,
        topicId: topicId,
        subtopicId: subtopicId,
      );
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

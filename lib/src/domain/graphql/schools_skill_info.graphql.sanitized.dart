// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// SanitizerGenerator
// **************************************************************************

import 'package:equatable/equatable.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_skill_info.graphql.dart'; // Sanitized Query$GetClassSkillInfo by ResponseClassBuilder

class GetClassSkillInfoResponse with EquatableMixin {
  GetClassSkillInfoResponse({
    required this.getQuestionGroupsLinkedToSkill,
    required this.skillInfoSkill,
    required this.$__typename,
  });

  factory GetClassSkillInfoResponse.fromGen(Query$GetClassSkillInfo gen) =>
      GetClassSkillInfoResponse(
        getQuestionGroupsLinkedToSkill: GetQuestionGroupsLinkedToSkill.fromGen(
            gen.getQuestionGroupsLinkedToSkill),
        skillInfoSkill: SkillInfoSkill.fromGen(gen.skillInfoSkill),
        $__typename: gen.$__typename,
      );

  final GetQuestionGroupsLinkedToSkill getQuestionGroupsLinkedToSkill;

  final SkillInfoSkill skillInfoSkill;

  final String $__typename;

  @override
  List<Object?> get props => [
        getQuestionGroupsLinkedToSkill,
        skillInfoSkill,
        $__typename,
      ];
  GetClassSkillInfoResponse copyWith({
    GetQuestionGroupsLinkedToSkill? getQuestionGroupsLinkedToSkill,
    SkillInfoSkill? skillInfoSkill,
  }) =>
      GetClassSkillInfoResponse(
        getQuestionGroupsLinkedToSkill: getQuestionGroupsLinkedToSkill ??
            this.getQuestionGroupsLinkedToSkill,
        skillInfoSkill: skillInfoSkill ?? this.skillInfoSkill,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Answer by FieldClassBuilder
class Answer with EquatableMixin {
  Answer({
    required this.id,
    required this.content,
    required this.isCorrect,
    required this.$__typename,
  });

  factory Answer.fromGen(Fragment$Answer gen) => Answer(
        id: gen.id,
        content: gen.content,
        isCorrect: gen.isCorrect,
        $__typename: gen.$__typename,
      );

  final String id;

  final String content;

  final bool isCorrect;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        content,
        isCorrect,
        $__typename,
      ];
  Answer copyWith({
    String? id,
    String? content,
    bool? isCorrect,
  }) =>
      Answer(
        id: id ?? this.id,
        content: content ?? this.content,
        isCorrect: isCorrect ?? this.isCorrect,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Question$practiceQuestionAnswerForClass by FieldClassBuilder
class PracticeQuestionAnswerForClass with EquatableMixin {
  PracticeQuestionAnswerForClass({
    required this.id,
    required this.content,
    required this.isCorrect,
    required this.$__typename,
  });

  factory PracticeQuestionAnswerForClass.fromGen(
          Fragment$Question$practiceQuestionAnswerForClass gen) =>
      PracticeQuestionAnswerForClass(
        id: gen.id,
        content: gen.content,
        isCorrect: gen.isCorrect,
        $__typename: gen.$__typename,
      );

  final String id;

  final String content;

  final bool isCorrect;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        content,
        isCorrect,
        $__typename,
      ];
  PracticeQuestionAnswerForClass copyWith({
    String? id,
    String? content,
    bool? isCorrect,
  }) =>
      PracticeQuestionAnswerForClass(
        id: id ?? this.id,
        content: content ?? this.content,
        isCorrect: isCorrect ?? this.isCorrect,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Question by FieldClassBuilder
class Question with EquatableMixin {
  Question({
    required this.$__typename,
    required this.id,
    required this.content,
    required this.answers,
    required this.active,
    this.figure,
    required this.calculator,
    this.hint,
    required this.needsRefactoring,
    this.practiceQuestionAnswerForClass,
  });

  factory Question.fromGen(Fragment$Question gen) {
    if (gen is Fragment$Question$$MultiQuestion) {
      return FqmMultiQuestion.fromGen(gen);
    } else if (gen is Fragment$Question$$ShortQuestion) {
      return FqsShortQuestion.fromGen(gen);
    } else {
      throw UnimplementedError();
    }
  }

  final String $__typename;

  final String id;

  final String content;

  final List<Fragment$Answer> answers;

  final bool active;

  final String? figure;

  final bool calculator;

  final String? hint;

  final bool needsRefactoring;

  final Fragment$Question$practiceQuestionAnswerForClass?
      practiceQuestionAnswerForClass;

  @override
  List<Object?> get props => [
        $__typename,
        id,
        content,
        answers,
        active,
        figure,
        calculator,
        hint,
        needsRefactoring,
        practiceQuestionAnswerForClass,
      ];
  Question copyWith({
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
  }) =>
      Question(
        $__typename: $__typename,
        id: id ?? this.id,
        content: content ?? this.content,
        answers: answers ?? this.answers,
        active: active ?? this.active,
        figure: figure ?? this.figure,
        calculator: calculator ?? this.calculator,
        hint: hint ?? this.hint,
        needsRefactoring: needsRefactoring ?? this.needsRefactoring,
        practiceQuestionAnswerForClass: practiceQuestionAnswerForClass ??
            this.practiceQuestionAnswerForClass,
      );
}

// Sanitized Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups by FieldClassBuilder
class AllQuestionGroups with EquatableMixin {
  AllQuestionGroups({
    required this.id,
    required this.allQuestions,
    required this.$__typename,
  });

  factory AllQuestionGroups.fromGen(
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill$allQuestionGroups
              gen) =>
      AllQuestionGroups(
        id: gen.id,
        allQuestions: gen.allQuestions.map(Question.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final String id;

  final List<Question> allQuestions;

  final String $__typename;

  @override
  List<Object?> get props => [
        id,
        allQuestions,
        $__typename,
      ];
  AllQuestionGroups copyWith({
    String? id,
    List<Question>? allQuestions,
  }) =>
      AllQuestionGroups(
        id: id ?? this.id,
        allQuestions: allQuestions ?? this.allQuestions,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill by FieldClassBuilder
class GetQuestionGroupsLinkedToSkill with EquatableMixin {
  GetQuestionGroupsLinkedToSkill({
    required this.allQuestionGroups,
    required this.$__typename,
  });

  factory GetQuestionGroupsLinkedToSkill.fromGen(
          Query$GetClassSkillInfo$getQuestionGroupsLinkedToSkill gen) =>
      GetQuestionGroupsLinkedToSkill(
        allQuestionGroups:
            gen.allQuestionGroups.map(AllQuestionGroups.fromGen).toList(),
        $__typename: gen.$__typename,
      );

  final List<AllQuestionGroups> allQuestionGroups;

  final String $__typename;

  @override
  List<Object?> get props => [
        allQuestionGroups,
        $__typename,
      ];
  GetQuestionGroupsLinkedToSkill copyWith(
          {List<AllQuestionGroups>? allQuestionGroups}) =>
      GetQuestionGroupsLinkedToSkill(
        allQuestionGroups: allQuestionGroups ?? this.allQuestionGroups,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetClassSkillInfo$skillInfoSkill by FieldClassBuilder
class SkillInfoSkill with EquatableMixin {
  SkillInfoSkill({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory SkillInfoSkill.fromGen(Query$GetClassSkillInfo$skillInfoSkill gen) =>
      SkillInfoSkill(
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
  SkillInfoSkill copyWith({
    String? id,
    String? title,
  }) =>
      SkillInfoSkill(
        id: id ?? this.id,
        title: title ?? this.title,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetQuestionGroupTagsForClass by ResponseClassBuilder
class GetQuestionGroupTagsForClassResponse with EquatableMixin {
  GetQuestionGroupTagsForClassResponse({
    required this.skill,
    required this.$__typename,
  });

  factory GetQuestionGroupTagsForClassResponse.fromGen(
          Query$GetQuestionGroupTagsForClass gen) =>
      GetQuestionGroupTagsForClassResponse(
        skill: Skill.fromGen(gen.skill),
        $__typename: gen.$__typename,
      );

  final Skill skill;

  final String $__typename;

  @override
  List<Object?> get props => [
        skill,
        $__typename,
      ];
  GetQuestionGroupTagsForClassResponse copyWith({Skill? skill}) =>
      GetQuestionGroupTagsForClassResponse(
        skill: skill ?? this.skill,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass by FieldClassBuilder
class GetQuestionGroupTagsForClass with EquatableMixin {
  GetQuestionGroupTagsForClass({
    required this.questionGroupID,
    required this.tag,
    required this.$__typename,
  });

  factory GetQuestionGroupTagsForClass.fromGen(
          Query$GetQuestionGroupTagsForClass$skill$getQuestionGroupTagsForClass
              gen) =>
      GetQuestionGroupTagsForClass(
        questionGroupID: gen.questionGroupID,
        tag: fromQuestionGroupTagGen(gen.tag),
        $__typename: gen.$__typename,
      );

  final String questionGroupID;

  final QuestionGroupTag tag;

  final String $__typename;

  @override
  List<Object?> get props => [
        questionGroupID,
        tag,
        $__typename,
      ];
  GetQuestionGroupTagsForClass copyWith({
    String? questionGroupID,
    QuestionGroupTag? tag,
  }) =>
      GetQuestionGroupTagsForClass(
        questionGroupID: questionGroupID ?? this.questionGroupID,
        tag: tag ?? this.tag,
        $__typename: $__typename,
      );
}

// Sanitized Query$GetQuestionGroupTagsForClass$skill by FieldClassBuilder
class Skill with EquatableMixin {
  Skill({
    required this.getQuestionGroupTagsForClass,
    required this.$__typename,
  });

  factory Skill.fromGen(Query$GetQuestionGroupTagsForClass$skill gen) => Skill(
        getQuestionGroupTagsForClass: gen.getQuestionGroupTagsForClass
            .map(GetQuestionGroupTagsForClass.fromGen)
            .toList(),
        $__typename: gen.$__typename,
      );

  final List<GetQuestionGroupTagsForClass> getQuestionGroupTagsForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        getQuestionGroupTagsForClass,
        $__typename,
      ];
  Skill copyWith(
          {List<GetQuestionGroupTagsForClass>? getQuestionGroupTagsForClass}) =>
      Skill(
        getQuestionGroupTagsForClass:
            getQuestionGroupTagsForClass ?? this.getQuestionGroupTagsForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$TagQuestionGroupForClass by ResponseClassBuilder
class TagQuestionGroupForClassResponse with EquatableMixin {
  TagQuestionGroupForClassResponse({
    required this.tagQuestionGroupForClass,
    required this.$__typename,
  });

  factory TagQuestionGroupForClassResponse.fromGen(
          Mutation$TagQuestionGroupForClass gen) =>
      TagQuestionGroupForClassResponse(
        tagQuestionGroupForClass:
            TagQuestionGroupForClass.fromGen(gen.tagQuestionGroupForClass),
        $__typename: gen.$__typename,
      );

  final TagQuestionGroupForClass tagQuestionGroupForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        tagQuestionGroupForClass,
        $__typename,
      ];
  TagQuestionGroupForClassResponse copyWith(
          {TagQuestionGroupForClass? tagQuestionGroupForClass}) =>
      TagQuestionGroupForClassResponse(
        tagQuestionGroupForClass:
            tagQuestionGroupForClass ?? this.tagQuestionGroupForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass by FieldClassBuilder
class TagQuestionGroupForClass with EquatableMixin {
  TagQuestionGroupForClass({
    required this.questionGroupID,
    required this.tag,
    required this.$__typename,
  });

  factory TagQuestionGroupForClass.fromGen(
          Mutation$TagQuestionGroupForClass$tagQuestionGroupForClass gen) =>
      TagQuestionGroupForClass(
        questionGroupID: gen.questionGroupID,
        tag: fromQuestionGroupTagGen(gen.tag),
        $__typename: gen.$__typename,
      );

  final String questionGroupID;

  final QuestionGroupTag tag;

  final String $__typename;

  @override
  List<Object?> get props => [
        questionGroupID,
        tag,
        $__typename,
      ];
  TagQuestionGroupForClass copyWith({
    String? questionGroupID,
    QuestionGroupTag? tag,
  }) =>
      TagQuestionGroupForClass(
        questionGroupID: questionGroupID ?? this.questionGroupID,
        tag: tag ?? this.tag,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$AnswerPracticeQuestionForClass by ResponseClassBuilder
class AnswerPracticeQuestionForClassResponse with EquatableMixin {
  AnswerPracticeQuestionForClassResponse({
    required this.answerPracticeQuestionForClass,
    required this.$__typename,
  });

  factory AnswerPracticeQuestionForClassResponse.fromGen(
          Mutation$AnswerPracticeQuestionForClass gen) =>
      AnswerPracticeQuestionForClassResponse(
        answerPracticeQuestionForClass: AnswerPracticeQuestionForClass.fromGen(
            gen.answerPracticeQuestionForClass),
        $__typename: gen.$__typename,
      );

  final AnswerPracticeQuestionForClass answerPracticeQuestionForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        answerPracticeQuestionForClass,
        $__typename,
      ];
  AnswerPracticeQuestionForClassResponse copyWith(
          {AnswerPracticeQuestionForClass? answerPracticeQuestionForClass}) =>
      AnswerPracticeQuestionForClassResponse(
        answerPracticeQuestionForClass: answerPracticeQuestionForClass ??
            this.answerPracticeQuestionForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass by FieldClassBuilder
class AnswerPracticeQuestionForClass with EquatableMixin {
  AnswerPracticeQuestionForClass({
    required this.content,
    required this.id,
    required this.isCorrect,
    required this.$__typename,
  });

  factory AnswerPracticeQuestionForClass.fromGen(
          Mutation$AnswerPracticeQuestionForClass$answerPracticeQuestionForClass
              gen) =>
      AnswerPracticeQuestionForClass(
        content: gen.content,
        id: gen.id,
        isCorrect: gen.isCorrect,
        $__typename: gen.$__typename,
      );

  final String content;

  final String id;

  final bool isCorrect;

  final String $__typename;

  @override
  List<Object?> get props => [
        content,
        id,
        isCorrect,
        $__typename,
      ];
  AnswerPracticeQuestionForClass copyWith({
    String? content,
    String? id,
    bool? isCorrect,
  }) =>
      AnswerPracticeQuestionForClass(
        content: content ?? this.content,
        id: id ?? this.id,
        isCorrect: isCorrect ?? this.isCorrect,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$ResetQuestionGroupForClass by ResponseClassBuilder
class ResetQuestionGroupForClassResponse with EquatableMixin {
  ResetQuestionGroupForClassResponse({
    required this.resetQuestionGroupForClass,
    required this.$__typename,
  });

  factory ResetQuestionGroupForClassResponse.fromGen(
          Mutation$ResetQuestionGroupForClass gen) =>
      ResetQuestionGroupForClassResponse(
        resetQuestionGroupForClass: gen.resetQuestionGroupForClass,
        $__typename: gen.$__typename,
      );

  final bool resetQuestionGroupForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        resetQuestionGroupForClass,
        $__typename,
      ];
  ResetQuestionGroupForClassResponse copyWith(
          {bool? resetQuestionGroupForClass}) =>
      ResetQuestionGroupForClassResponse(
        resetQuestionGroupForClass:
            resetQuestionGroupForClass ?? this.resetQuestionGroupForClass,
        $__typename: $__typename,
      );
}

// Sanitized Mutation$ResetPracticeQuestionForClass by ResponseClassBuilder
class ResetPracticeQuestionForClassResponse with EquatableMixin {
  ResetPracticeQuestionForClassResponse({
    required this.resetPracticeQuestionForClass,
    required this.$__typename,
  });

  factory ResetPracticeQuestionForClassResponse.fromGen(
          Mutation$ResetPracticeQuestionForClass gen) =>
      ResetPracticeQuestionForClassResponse(
        resetPracticeQuestionForClass: gen.resetPracticeQuestionForClass,
        $__typename: gen.$__typename,
      );

  final bool resetPracticeQuestionForClass;

  final String $__typename;

  @override
  List<Object?> get props => [
        resetPracticeQuestionForClass,
        $__typename,
      ];
  ResetPracticeQuestionForClassResponse copyWith(
          {bool? resetPracticeQuestionForClass}) =>
      ResetPracticeQuestionForClassResponse(
        resetPracticeQuestionForClass:
            resetPracticeQuestionForClass ?? this.resetPracticeQuestionForClass,
        $__typename: $__typename,
      );
}

// Sanitized Fragment$Question$$MultiQuestion by InlineFragmentBuilder
class FqmMultiQuestion with EquatableMixin implements Question {
  FqmMultiQuestion({
    required this.$__typename,
    required this.id,
    required this.content,
    required this.answers,
    required this.active,
    this.figure,
    required this.calculator,
    this.hint,
    required this.needsRefactoring,
    this.practiceQuestionAnswerForClass,
  });

  factory FqmMultiQuestion.fromGen(Fragment$Question$$MultiQuestion gen) =>
      FqmMultiQuestion(
        $__typename: gen.$__typename,
        id: gen.id,
        content: gen.content,
        answers: gen.answers,
        active: gen.active,
        figure: gen.figure,
        calculator: gen.calculator,
        hint: gen.hint,
        needsRefactoring: gen.needsRefactoring,
        practiceQuestionAnswerForClass: gen.practiceQuestionAnswerForClass,
      );

  final String $__typename;

  final String id;

  final String content;

  final List<Fragment$Answer> answers;

  final bool active;

  final String? figure;

  final bool calculator;

  final String? hint;

  final bool needsRefactoring;

  final Fragment$Question$practiceQuestionAnswerForClass?
      practiceQuestionAnswerForClass;

  @override
  List<Object?> get props => [
        $__typename,
        id,
        content,
        answers,
        active,
        figure,
        calculator,
        hint,
        needsRefactoring,
        practiceQuestionAnswerForClass,
      ];
  FqmMultiQuestion copyWith({
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
  }) =>
      FqmMultiQuestion(
        $__typename: $__typename,
        id: id ?? this.id,
        content: content ?? this.content,
        answers: answers ?? this.answers,
        active: active ?? this.active,
        figure: figure ?? this.figure,
        calculator: calculator ?? this.calculator,
        hint: hint ?? this.hint,
        needsRefactoring: needsRefactoring ?? this.needsRefactoring,
        practiceQuestionAnswerForClass: practiceQuestionAnswerForClass ??
            this.practiceQuestionAnswerForClass,
      );
}

// Sanitized Fragment$Question$$ShortQuestion by InlineFragmentBuilder
class FqsShortQuestion with EquatableMixin implements Question {
  FqsShortQuestion({
    required this.$__typename,
    required this.id,
    required this.content,
    required this.answers,
    required this.active,
    this.figure,
    required this.calculator,
    this.hint,
    required this.needsRefactoring,
    this.practiceQuestionAnswerForClass,
    this.decimals,
    required this.exact,
    this.prefix,
    required this.answerFormat,
    required this.showHelper,
    this.suffix,
  });

  factory FqsShortQuestion.fromGen(Fragment$Question$$ShortQuestion gen) =>
      FqsShortQuestion(
        $__typename: gen.$__typename,
        id: gen.id,
        content: gen.content,
        answers: gen.answers,
        active: gen.active,
        figure: gen.figure,
        calculator: gen.calculator,
        hint: gen.hint,
        needsRefactoring: gen.needsRefactoring,
        practiceQuestionAnswerForClass: gen.practiceQuestionAnswerForClass,
        decimals: gen.decimals,
        exact: gen.exact,
        prefix: gen.prefix,
        answerFormat: fromAnswerFormatGen(gen.answerFormat),
        showHelper: gen.showHelper,
        suffix: gen.suffix,
      );

  final String $__typename;

  final String id;

  final String content;

  final List<Fragment$Answer> answers;

  final bool active;

  final String? figure;

  final bool calculator;

  final String? hint;

  final bool needsRefactoring;

  final Fragment$Question$practiceQuestionAnswerForClass?
      practiceQuestionAnswerForClass;

  final int? decimals;

  final bool exact;

  final String? prefix;

  final AnswerFormat answerFormat;

  final bool showHelper;

  final String? suffix;

  @override
  List<Object?> get props => [
        $__typename,
        id,
        content,
        answers,
        active,
        figure,
        calculator,
        hint,
        needsRefactoring,
        practiceQuestionAnswerForClass,
        decimals,
        exact,
        prefix,
        answerFormat,
        showHelper,
        suffix,
      ];
  FqsShortQuestion copyWith({
    String? id,
    String? content,
    List<Fragment$Answer>? answers,
    bool? active,
    String? figure,
    bool? calculator,
    String? hint,
    bool? needsRefactoring,
    Fragment$Question$practiceQuestionAnswerForClass?
        practiceQuestionAnswerForClass,
    int? decimals,
    bool? exact,
    String? prefix,
    AnswerFormat? answerFormat,
    bool? showHelper,
    String? suffix,
  }) =>
      FqsShortQuestion(
        $__typename: $__typename,
        id: id ?? this.id,
        content: content ?? this.content,
        answers: answers ?? this.answers,
        active: active ?? this.active,
        figure: figure ?? this.figure,
        calculator: calculator ?? this.calculator,
        hint: hint ?? this.hint,
        needsRefactoring: needsRefactoring ?? this.needsRefactoring,
        practiceQuestionAnswerForClass: practiceQuestionAnswerForClass ??
            this.practiceQuestionAnswerForClass,
        decimals: decimals ?? this.decimals,
        exact: exact ?? this.exact,
        prefix: prefix ?? this.prefix,
        answerFormat: answerFormat ?? this.answerFormat,
        showHelper: showHelper ?? this.showHelper,
        suffix: suffix ?? this.suffix,
      );
}

// Sanitized Variables$Query$GetClassSkillInfo by ArgsClassBuilder
class GetClassSkillInfoArgs with EquatableMixin {
  GetClassSkillInfoArgs({
    this.options,
    required this.skillId,
    required this.classId,
  });

  final GetAllEdgeOptions? options;

  final String skillId;

  final String classId;

  @override
  List<Object?> get props => [
        options,
        skillId,
        classId,
      ];
  Variables$Query$GetClassSkillInfo toGen() =>
      Variables$Query$GetClassSkillInfo(
        options: Input$GetAllEdgeOptions(
          sortBy: options?.sortBy,
          query: options?.query,
          ids: options?.ids,
          desc: options?.desc ?? false,
          sortByEdgeProperty: options?.sortByEdgeProperty ?? false,
        ),
        skillId: skillId,
        classId: classId,
      );
}

// Sanitized Variables$Query$GetQuestionGroupTagsForClass by ArgsClassBuilder
class GetQuestionGroupTagsForClassArgs with EquatableMixin {
  GetQuestionGroupTagsForClassArgs({
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
  Variables$Query$GetQuestionGroupTagsForClass toGen() =>
      Variables$Query$GetQuestionGroupTagsForClass(
        classId: classId,
        skillId: skillId,
      );
}

// Sanitized Variables$Mutation$TagQuestionGroupForClass by ArgsClassBuilder
class TagQuestionGroupForClassArgs with EquatableMixin {
  TagQuestionGroupForClassArgs({
    required this.classId,
    required this.questionGroupId,
    required this.tag,
  });

  final String classId;

  final String questionGroupId;

  final QuestionGroupTag tag;

  @override
  List<Object?> get props => [
        classId,
        questionGroupId,
        tag,
      ];
  Variables$Mutation$TagQuestionGroupForClass toGen() =>
      Variables$Mutation$TagQuestionGroupForClass(
        classId: classId,
        questionGroupId: questionGroupId,
        tag: tag.toGen(),
      );
}

// Sanitized Variables$Mutation$AnswerPracticeQuestionForClass by ArgsClassBuilder
class AnswerPracticeQuestionForClassArgs with EquatableMixin {
  AnswerPracticeQuestionForClassArgs({
    required this.classId,
    required this.questionId,
    required this.answer,
  });

  final String classId;

  final String questionId;

  final String answer;

  @override
  List<Object?> get props => [
        classId,
        questionId,
        answer,
      ];
  Variables$Mutation$AnswerPracticeQuestionForClass toGen() =>
      Variables$Mutation$AnswerPracticeQuestionForClass(
        classId: classId,
        questionId: questionId,
        answer: answer,
      );
}

// Sanitized Variables$Mutation$ResetQuestionGroupForClass by ArgsClassBuilder
class ResetQuestionGroupForClassArgs with EquatableMixin {
  ResetQuestionGroupForClassArgs({
    required this.classId,
    required this.questionGroupId,
  });

  final String classId;

  final String questionGroupId;

  @override
  List<Object?> get props => [
        classId,
        questionGroupId,
      ];
  Variables$Mutation$ResetQuestionGroupForClass toGen() =>
      Variables$Mutation$ResetQuestionGroupForClass(
        classId: classId,
        questionGroupId: questionGroupId,
      );
}

// Sanitized Variables$Mutation$ResetPracticeQuestionForClass by ArgsClassBuilder
class ResetPracticeQuestionForClassArgs with EquatableMixin {
  ResetPracticeQuestionForClassArgs({
    required this.classId,
    required this.questionId,
  });

  final String classId;

  final String questionId;

  @override
  List<Object?> get props => [
        classId,
        questionId,
      ];
  Variables$Mutation$ResetPracticeQuestionForClass toGen() =>
      Variables$Mutation$ResetPracticeQuestionForClass(
        classId: classId,
        questionId: questionId,
      );
}

part of 'year_level_bloc.dart';

class YearLevelState with EquatableMixin {
  const YearLevelState({
    required this.allYears,
    required this.activeYearsIds,
    required this.topicId,
    required this.subtopicId,
    this.selectedYear,
    this.showSelectTopicText = true,
    this.showSelectSubtopicText = true,
    this.showSelectedSkillText = true,
  });

  final List<Year> allYears;
  final List<String> activeYearsIds;
  final Year? selectedYear;
  final String? topicId;
  final String? subtopicId;

  final bool showSelectTopicText;
  final bool showSelectSubtopicText;
  final bool showSelectedSkillText;

  @override
  List<Object?> get props => [
        selectedYear,
        allYears,
        activeYearsIds,
        topicId,
        subtopicId,
        showSelectTopicText,
        showSelectSubtopicText,
        showSelectedSkillText
      ];

  YearLevelState copyWith({
    required String? topicId,
    required String? subtopicId,
    List<Year>? allYears,
    Year? selectedYear,
    List<String>? activeYearsIds,
    bool? showSelectTopicText,
    bool? showSelectSubtopicText,
    bool? showSelectedSkillText,
  }) {
    return YearLevelState(
      allYears: allYears ?? this.allYears,
      selectedYear: selectedYear ?? this.selectedYear,
      activeYearsIds: activeYearsIds ?? this.activeYearsIds,
      showSelectTopicText: showSelectTopicText ?? this.showSelectTopicText,
      showSelectSubtopicText: showSelectSubtopicText ?? this.showSelectSubtopicText,
      showSelectedSkillText: showSelectedSkillText ?? this.showSelectedSkillText,
      topicId: topicId,
      subtopicId: subtopicId,
    );
  }
}

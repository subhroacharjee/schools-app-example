part of 'add_assessment_bloc.dart';

class AddAssessmentState with EquatableMixin {
  AddAssessmentState({
    required this.topicId,
    required this.topicTitle,
    required this.topicList,
    required this.topicColor,
    required this.topicEmoji,
    this.status,
    this.assessmentTitle,
    this.subtopics = const [],
    this.loading = false,
  });

  final String? topicId;
  final String? topicTitle;
  final Color? topicColor;
  final String? topicEmoji;
  final List<Topic>? topicList;
  final List<SubtopicInfo>? subtopics;
  final String? assessmentTitle;
  final AddAssessmentStatus? status;
  final bool loading;

  @override
  List<Object?> get props => [
        topicId,
        topicTitle,
        subtopics,
        assessmentTitle,
        loading,
      ];

  AddAssessmentState copyWith({
    List<Topic>? topicList,
    String? topicId,
    String? topicTitle,
    Color? topicColor,
    String? topicEmoji,
    List<SubtopicInfo>? subtopics,
    String? assessmentTitle,
    AddAssessmentStatus? status,
    bool? loading,
  }) =>
      AddAssessmentState(
        topicId: topicId ?? this.topicId,
        topicTitle: topicTitle ?? this.topicTitle,
        topicColor: topicColor ?? this.topicColor,
        topicEmoji: topicEmoji ?? this.topicEmoji,
        topicList: topicList ?? this.topicList,
        subtopics: subtopics ?? this.subtopics,
        assessmentTitle: assessmentTitle ?? this.assessmentTitle,
        status: status ?? this.status,
        loading: loading ?? this.loading,
      );
}

class ErrorAddingAssessmentState extends AddAssessmentState {
  ErrorAddingAssessmentState({
    required super.topicId,
    required super.topicTitle,
    required super.topicList,
    required super.topicColor,
    required super.topicEmoji,
    required this.error,
    super.assessmentTitle,
    super.subtopics,
  });

  final String error;
}

enum AddAssessmentStatus { active, updating, updated }

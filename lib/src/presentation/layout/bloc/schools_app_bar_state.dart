part of 'schools_app_bar_bloc.dart';

abstract class SchoolsAppBarState with EquatableMixin {
  const SchoolsAppBarState();
}

class LearnSchoolsAppBarState extends SchoolsAppBarState {
  @override
  List<Object?> get props => [];
}

class TopicSchoolsAppBarState extends SchoolsAppBarState {
  const TopicSchoolsAppBarState({
    required this.id,
    required this.emoji,
    required this.color,
    required this.title,
    this.progress,
    this.isLoading = false,
  });

  const TopicSchoolsAppBarState.loading()
      : id = '',
        emoji = '',
        color = null,
        title = '',
        progress = null,
        isLoading = true;

  final String id;
  final String emoji;
  final Color? color;
  final String title;
  final Progress? progress;
  final bool isLoading;

  @override
  List<Object?> get props => [
        id,
        emoji,
        color,
        title,
        progress,
      ];
}

class SubtopicSchoolsAppBarState extends SchoolsAppBarState {
  const SubtopicSchoolsAppBarState({
    required this.id,
    required this.icon,
    required this.state,
    required this.title,
    required this.topicColor,
    required this.topicId,
    this.progress,
    this.isLoading = false,
  });

  const SubtopicSchoolsAppBarState.loading()
      : id = '',
        icon = '',
        state = null,
        title = null,
        progress = null,
        topicColor = Colors.white,
        topicId = '',
        isLoading = true;

  final String id;
  final String icon;
  final SubtopicState? state;
  final String? title;
  final Progress? progress;
  final Color topicColor;
  final bool isLoading;
  final String topicId;

  @override
  List<Object?> get props => [
        id,
        icon,
        state,
        title,
        progress,
      ];
}

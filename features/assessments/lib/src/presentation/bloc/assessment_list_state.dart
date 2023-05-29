part of 'assessment_list_bloc.dart';

class AssessmentListState with EquatableMixin {
  const AssessmentListState({
    required this.assessments,
    this.pastCount = 0,
    this.upcomingCount = 0,
    this.activeCount = 0,
    this.status = AssessmentListStatus.active,
    this.noAssessmentCreated = false,
    this.interval = DiagnosticTestSessionInterval.active,
  });
  const AssessmentListState.empty()
      : assessments = const {},
        pastCount = 0,
        upcomingCount = 0,
        activeCount = 0,
        noAssessmentCreated = false,
        status = AssessmentListStatus.active,
        interval = DiagnosticTestSessionInterval.active;

  final Map<String, AssessmentInfo> assessments;
  final int pastCount;
  final int upcomingCount;
  final int activeCount;
  final AssessmentListStatus status;
  final DiagnosticTestSessionInterval interval;
  final bool noAssessmentCreated;

  @override
  List<Object> get props => [
        assessments,
        upcomingCount,
        status,
        interval,
        noAssessmentCreated,
      ];

  AssessmentInfo? getAssessment(String id) => assessments[id];

  AssessmentListState copyWith({
    Map<String, AssessmentInfo>? assessments,
    int? pastCount,
    int? upcomingCount,
    int? activeCount,
    AssessmentListStatus status = AssessmentListStatus.active,
    bool? noAssessmentCreated,
    DiagnosticTestSessionInterval? interval,
  }) {
    return AssessmentListState(
      assessments: assessments ?? this.assessments,
      pastCount: pastCount ?? this.pastCount,
      upcomingCount: upcomingCount ?? this.upcomingCount,
      activeCount: activeCount ?? this.activeCount,
      interval: interval ?? this.interval,
      noAssessmentCreated: noAssessmentCreated ?? this.noAssessmentCreated,
      status: status,
    );
  }
}

// Some active assessments can be current or past

enum AssessmentListStatus { active, loading }

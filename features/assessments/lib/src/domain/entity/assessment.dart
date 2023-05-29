import 'package:assessments/src/domain/assessments.graphql.sanitized.dart' hide Topic;
import 'package:assessments/src/domain/entity/assessment_status.dart';
import 'package:assessments/src/domain/entity/student_status.dart';
import 'package:equatable/equatable.dart';

import 'assessment_topic_info.dart';
import 'subtopic_info.dart';

enum AssessmentType { active, upcoming, past }

class AssessmentInfo with EquatableMixin {
  const AssessmentInfo({
    required this.tests,
    required this.duration,
    required this.startAt,
    required this.dueAt,
    required this.expectedDueAt,
    required this.subtopics,
    required this.assessmentTopic,
    required this.id,
    required this.name,
    required this.status,
    required this.timeSaved,
    required this.allSubtopics,
    this.startedAt,
    this.timeTaken,
  });

  factory AssessmentInfo.fromAssessment(Assessment assessment) => AssessmentInfo(
        tests: assessment.tests.map<StudentStatus>(StudentStatus.fromTests).toList(),
        duration: assessment.duration,
        startAt: assessment.startAt,
        startedAt: assessment.startedAt,
        dueAt: assessment.dueAt,
        expectedDueAt: assessment.expectedDueAt,
        subtopics: assessment.subtopics.map(SubtopicInfo.fromSubtopics).toList(),
        assessmentTopic: AssessmentTopicInfo.fromAssessmentTopic(assessment.assessmentTopic),
        id: assessment.id,
        name: assessment.name,
        status: assessment.status.toAssessmentStatus,
        timeSaved: assessment.timeSaved,
        allSubtopics: assessment.allSubtopics,
        timeTaken: assessment.timeTaken,
      );

  final List<StudentStatus> tests;
  final Duration duration;
  final DateTime startAt;
  final DateTime? startedAt;
  final DateTime dueAt;
  final DateTime expectedDueAt;
  final List<SubtopicInfo> subtopics;
  final AssessmentTopicInfo assessmentTopic;
  final String id;
  final String name;
  final AssessmentStatus status;
  final Duration timeSaved;
  final bool allSubtopics;
  final Duration? timeTaken;

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
      ];
  AssessmentInfo copyWith({
    List<StudentStatus>? tests,
    Duration? duration,
    DateTime? startAt,
    DateTime? startedAt,
    DateTime? dueAt,
    DateTime? expectedDueAt,
    List<SubtopicInfo>? subtopics,
    AssessmentTopicInfo? assessmentTopic,
    String? id,
    String? name,
    AssessmentStatus? status,
    Duration? timeSaved,
    bool? allSubtopics,
    Duration? timeTaken,
  }) =>
      AssessmentInfo(
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
      );
}

import 'package:schema/schema.dart';

enum AssessmentStatus { created, started, paused, finished, unknown }

extension DiagnosticTestSessionStatusX on DiagnosticTestSessionStatus {
  AssessmentStatus get toAssessmentStatus {
    switch (this) {
      case DiagnosticTestSessionStatus.created:
        return AssessmentStatus.created;
      case DiagnosticTestSessionStatus.started:
        return AssessmentStatus.started;
      case DiagnosticTestSessionStatus.paused:
        return AssessmentStatus.paused;
      case DiagnosticTestSessionStatus.finished:
        return AssessmentStatus.finished;
      case DiagnosticTestSessionStatus.unknown:
        return AssessmentStatus.unknown;
    }
  }
}

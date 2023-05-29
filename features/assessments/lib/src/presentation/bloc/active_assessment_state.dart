part of 'active_assessment_bloc.dart';

class ActiveAssessmentState with EquatableMixin {
  const ActiveAssessmentState({
    required this.id,
    required this.status,
  });

  final String id;
  final DiagnosticTestSessionStatus status;

  @override
  List<Object> get props => [
        id,
        status,
      ];
}

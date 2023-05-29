import 'package:assessments/assessments.dart';
import 'package:components/components.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/presentation/widgets/list_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/domain/entities/student_assessment.dart';
import 'package:schools_app/src/presentation/blocs/student_assessments_bloc.dart';

class StudentAssessmentList extends StatefulWidget {
  const StudentAssessmentList({super.key});

  @override
  State<StudentAssessmentList> createState() => _StudentAssessmentListState();
}

class _StudentAssessmentListState extends State<StudentAssessmentList> {
  late final _assessmentListBloc = StudentAssessmentsBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: TColors.black.shade50),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 2,
            color: TColors.black.shade50,
          ),
        ],
      ),
      child: BlocBuilder<StudentAssessmentsBloc, AsyncSnapshot<StudentAssessmentsState>>(
        bloc: _assessmentListBloc,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TText(
                'Upcoming Assessments',
                style: TTextStyle.headline6(),
              ),
              const SizedBox(height: 24),
              state.when(
                data: (data) {
                  if (data.assessments == null) {
                    return const ListShimmer(
                      itemCount: 3,
                      itemHeight: 60,
                    );
                  }
                  final assessments = data.assessments!;
                  if (assessments.isEmpty) {
                    return Center(
                      child: TText(
                        'No upcoming assessments',
                        style: TTextStyle.mediumS(color: TColors.black.shade400),
                      ),
                    );
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    itemCount: assessments.length,
                    itemBuilder: (context, index) {
                      final assessment = assessments[index];
                      return _StudentAssessmentItem(
                        assessment: assessment,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 23),
                        child: Divider(),
                      );
                    },
                  );
                },
                loading: () => const Center(
                  child: DefaultCircularProgressIndicator(
                    color: TColors.primary,
                  ),
                ),
                err: (_, __) => const Center(
                  child: TText(
                    'Failed to load assessments',
                    style: TTextStyle.mediumS(color: TColors.danger),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _assessmentListBloc.close();
    super.dispose();
  }
}

class _StudentAssessmentItem extends StatefulWidget {
  const _StudentAssessmentItem({
    required this.assessment,
    Key? key,
  }) : super(key: key);

  final StudentAssessment assessment;

  @override
  State<_StudentAssessmentItem> createState() => _StudentAssessmentItemState();
}

class _StudentAssessmentItemState extends State<_StudentAssessmentItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TText(
          widget.assessment.name,
          style: const TTextStyle.mediumXS(),
        ),
        const SizedBox(height: 11),
        DateAndTimeBox(
          duration: widget.assessment.duration,
          date: widget.assessment.startAt,
          removeTitle: true,
        ),
      ],
    );
  }
}

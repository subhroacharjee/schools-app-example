import 'package:assessments/src/presentation/assessments_configurer.dart';
import 'package:assessments/src/presentation/bloc/assessment_list_bloc.dart';
import 'package:assessments/src/presentation/widget/assessment_item.dart';
import 'package:assessments/src/presentation/widget/must_have_students_tooltip.dart';
import 'package:assessments/src/presentation/widget/no_assessment_student_widget.dart';
import 'package:assessments/src/presentation/widget/popup/add_assessment/add_assessment_popup.dart';
import 'package:components/components.dart';
import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/presentation/widgets/centered_circular_progress_indicator.dart';
import 'package:core_flutter/presentation/widgets/list_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recase/recase.dart';
import 'package:schema/schema.dart';

import '../../domain/entity/assessment.dart';

class AssessmentsScreen extends StatefulWidget {
  const AssessmentsScreen({
    super.key,
  });
  @override
  State<AssessmentsScreen> createState() => _AssessmentsScreenState();
}

class _AssessmentsScreenState extends State<AssessmentsScreen> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);
  late final _bloc = AssessmentListBloc();

  DiagnosticTestSessionInterval get _currentTabInterval =>
      DiagnosticTestSessionInterval.values[_tabController.index];

  @override
  void initState() {
    super.initState();
    _tabController.addListener(tabChanged);
  }

  void tabChanged() {
    if (_tabController.indexIsChanging && _tabController.previousIndex != _tabController.index) {
      _bloc.interval = DiagnosticTestSessionInterval.values[_tabController.index];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<AssessmentListBloc, AsyncSnapshot<AssessmentListState>>(
          bloc: _bloc,
          builder: (_, snap) {
            return snap.when(
              data: (data) => Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 24, 28, 16),
                    child: Row(
                      children: [
                        const TText(
                          'Assessments',
                          style: TTextStyle.headline4(),
                        ),
                        const Spacer(),
                        MustHaveStudentsTooltip(
                          child: TButton(
                            onPressed: gi<AssessmentsConfigurer>().hasStudents
                                ? () async {
                                    final r = await AddAssessmentPopup.show(context: context);
                                    if (r ?? false) {
                                      (_currentTabInterval ==
                                              DiagnosticTestSessionInterval.upcoming)
                                          ? _bloc.refresh(emitLoading: false)
                                          : _switchToTab(DiagnosticTestSessionInterval.upcoming);
                                    }
                                  }
                                : null,
                            style: TButtonStyle.primary(
                              prefixIcon: const Icon(Icons.add, size: 14, color: TColors.white),
                            ),
                            child: const TText(
                              'Create Assessment',
                              style: TTextStyle.boldS(color: TColors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: !gi<AssessmentsConfigurer>().hasStudents
                        ? const NoAssessmentStudentWidget()
                        : Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 700,
                                    child: TTabBar.material(
                                      controller: _tabController,
                                      isScrollable: true,
                                      tabs: [
                                        const TTab(text: 'Active Assessments'),
                                        TTab(
                                          text: 'Upcoming Assessments',
                                          notificationBadge: data.upcomingCount == 0
                                              ? null
                                              : data.upcomingCount.toString(),
                                        ),
                                        const TTab(text: 'Past Assessments'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: TColors.black.shade100,
                              ),
                              Expanded(
                                child: snap.when(
                                  data: (data) {
                                    if (data.status == AssessmentListStatus.loading) {
                                      return const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                                        child: ListShimmer(
                                          padding: EdgeInsets.zero,
                                          itemHeight: 130,
                                          spacing: 24,
                                          itemCount: 6,
                                        ),
                                      );
                                    } else {
                                      return _SliverAssessmentTab(
                                        title: data.interval.name.titleCase,
                                        assessments: data.assessments.values.toList(),
                                        assessmentType: AssessmentType.values[
                                            DiagnosticTestSessionInterval.values
                                                .indexOf(data.interval)],
                                        startAssessmentCallback: () =>
                                            _switchToTab(DiagnosticTestSessionInterval.active),
                                      );
                                    }
                                  },
                                  err: (_, __) => const Center(
                                    child: TText(
                                      'Failed to load assessments',
                                      style: TTextStyle.boldS(color: TColors.danger),
                                    ),
                                  ),
                                  loading: () => const Center(child: CircularProgressIndicator()),
                                ),
                              ),
                            ],
                          ),
                  ),
                ],
              ),
              err: (_, __) => const Center(
                child: TText(
                  'Failed to load assessments',
                  style: TTextStyle.boldS(color: TColors.danger),
                ),
              ),
              loading: () => const CenteredCircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    _tabController
      ..removeListener(tabChanged)
      ..dispose();
    super.dispose();
  }

  void _switchToTab(DiagnosticTestSessionInterval interval) =>
      _tabController.animateTo(DiagnosticTestSessionInterval.values.indexOf(interval));
}

class _SliverAssessmentTab extends StatelessWidget {
  const _SliverAssessmentTab({
    required this.title,
    required this.assessments,
    required this.assessmentType,
    required this.startAssessmentCallback,
    Key? key,
  }) : super(key: key);

  final List<AssessmentInfo>? assessments;
  final String title;
  final AssessmentType assessmentType;
  final VoidCallback startAssessmentCallback;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(10, 12, 24, 24),
          sliver: assessments == null
              ? const SliverToBoxAdapter(
                  child: ListShimmer(
                    itemHeight: 100,
                    spacing: 24,
                    itemCount: 6,
                  ),
                )
              : assessments!.isEmpty
                  ? SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'packages/assessments/assets/no_assessment.svg',
                            ),
                            const SizedBox(height: 35),
                            TText(
                              'No $title Assessment',
                              style: const TTextStyle.headline6(),
                            ),
                            const SizedBox(height: 100),
                          ],
                        ),
                      ),
                    )
                  : SliverList(
                      delegate: SliverChildListDelegate(
                        assessments!
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                child: AssessmentItem(
                                  assessment: e,
                                  type: assessmentType,
                                  startAssessmentCallback: startAssessmentCallback,
                                  key: ValueKey(e.id),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
        ),
      ],
    );
  }
}

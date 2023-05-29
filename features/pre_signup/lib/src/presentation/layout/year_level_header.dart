import 'package:components/components.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/constants.dart';
import 'package:core_flutter/presentation/widgets/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pre_signup/pre_signup.dart';
import 'package:pre_signup/src/presentation/bloc/year_level_bloc.dart';
import 'package:pre_signup/src/presentation/widget/year_level_box.dart';
import 'package:schools_app/schools_app.dart';

class YearLevelHeader extends StatefulWidget {
  const YearLevelHeader({super.key});

  @override
  State<YearLevelHeader> createState() => _YearLevelHeaderState();
}

class _YearLevelHeaderState extends State<YearLevelHeader> {
  @override
  void initState() {
    super.initState();
    context.read<YearLevelBloc>().forgetCachedYear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      padding: const EdgeInsets.fromLTRB(20, 24, 12, 10),
      child: BlocBuilder<YearLevelBloc, AsyncSnapshot<YearLevelState>>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TText(
                    'Year:',
                    style: TTextStyle.headline6(),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: state.when(
                      data: (data) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: data.allYears.map((year) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 14),
                                child: LoadingShimmer(
                                  loading: state.connectionState == ConnectionState.waiting,
                                  child: YearLevelBox.mini(
                                    id: year.id,
                                    title: year.title,
                                    isSelected: data.selectedYear?.id == year.id,
                                    isEnabled: data.activeYearsIds.contains(year.id),
                                    onSelect: (yearId) async {
                                      context.read<YearLevelBloc>().selectYear(yearId).then((_) {
                                        context.refreshRoute();
                                      });
                                    },
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        );
                      },
                      loading: () => SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(8, (_) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 14),
                              child: LoadingShimmer(
                                loading: true,
                                child: SizedBox(
                                  width: 56,
                                  height: 40,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      err: (e, s) => const Center(
                        child: TText(
                          'Unable to load year level',
                          style: TTextStyle.mediumS(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (state.data?.selectedYear != null)
                Builder(
                  builder: (context) {
                    final data = state.data;
                    String? text;

                    if (data?.subtopicId != null) {
                      text = data?.showSelectedSkillText ?? false ? 'Select a skill' : null;
                    } else if (data?.topicId != null) {
                      text = data?.showSelectSubtopicText ?? false ? 'Select a subtopic' : null;
                    } else {
                      text = data?.showSelectTopicText ?? false ? 'Select a topic below' : null;
                    }

                    if (text == null) return empty;

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              text,
                              style: const TTextStyle.headline6(),
                            ),
                            const SizedBox(width: 8),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Image.asset(
                                'packages/pre_signup/assets/select_topic_arrow.png',
                                height: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}

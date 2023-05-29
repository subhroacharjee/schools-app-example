import 'dart:async';

import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:equatable/equatable.dart';
import 'package:pre_signup/pre_signup.dart';
import 'package:pre_signup/src/domain/graphql/pre_signup.graphql.sanitized.dart';
import 'package:schools_app/schools_app.dart';

part 'year_level_state.dart';

class YearLevelBloc extends FutureAsyncSnapshotCubit<YearLevelState> with ClassInfoCacheMixin {
  YearLevelBloc({
    this.topic,
    this.subtopic,
  });

  final String? subtopic;
  final String? topic;

  final _repo = gi<PreSignupRepository>();

  @override
  FutureOr<YearLevelState> resolve() async {
    final res = await _repo.allYears();
    final allYears = res.unwrap().allYears.where((e) {
      final val = int.tryParse(e.title);
      return val != null && val >= 3 && val <= 10;
    }).toList()
      ..sort(
        (a, b) => int.parse(a.title).compareTo(
          int.parse(b.title),
        ),
      );

    final activeIds =
        await getActiveYearsIds(topic, subtopic) ?? allYears.map((e) => e.id).toList();

    Year? selectedYear;

    try {
      selectedYear = allYears.firstWhere((e) => e.id == yearId);
    } catch (e) {
      log.e('error while retrieving selected year Id: $yearId');
    }

    return YearLevelState(
      allYears: allYears,
      selectedYear: selectedYear,
      activeYearsIds: activeIds,
      topicId: topic,
      subtopicId: subtopic,
    );
  }

  Future<void> forgetCachedYear() async {
    classInfoCache.setYearId(null);
  }

  Future<void> clearSkillId() async {
    classInfoCache.setSkillId(null);
  }

  Future<void> selectYear(String yearId) async {
    final data = state.data!;
    Year? year;
    classInfoCache.setYearId(yearId);
    year = data.allYears.firstWhere((e) => e.id == yearId);

    emitWithData(
      state.data!.copyWith(
        allYears: data.allYears,
        activeYearsIds: data.activeYearsIds,
        selectedYear: year,
        topicId: data.topicId,
        subtopicId: data.subtopicId,
      ),
    );
  }

  Future<void> setActiveYears(String? mtopicId, String? msubtopicId) async {
    if (state.connectionState == ConnectionState.waiting) return;
    final data = state.data!;

    if (mtopicId == null && msubtopicId == null) {
      emitWithData(data.copyWith(
        activeYearsIds: state.data!.allYears.map((e) => e.id).toList(),
        topicId: null,
        subtopicId: null,
      ));

      return;
    }

    final showTopic = mtopicId == null && data.showSelectTopicText;
    final showSubtopic = msubtopicId == null && data.showSelectSubtopicText;
    final showSkill = skillId == null && data.showSelectedSkillText;

    emitWithData(
      state.data!.copyWith(
        activeYearsIds: [],
        topicId: mtopicId,
        subtopicId: msubtopicId,
        showSelectTopicText: showTopic,
        showSelectSubtopicText: showSubtopic,
        showSelectedSkillText: showSkill,
      ),
      ConnectionState.waiting,
    );

    final activeIds = await getActiveYearsIds(mtopicId, msubtopicId);
    log.e('getActiveYearsIds: $topicId $subtopicId $activeIds ');

    emitWithData(state.data!.copyWith(
      activeYearsIds: activeIds ?? [],
      topicId: mtopicId,
      subtopicId: msubtopicId,
      showSelectTopicText: showTopic,
      showSelectSubtopicText: showSubtopic,
      showSelectedSkillText: showSkill,
    ));
  }

  Future<List<String>?> getActiveYearsIds(String? topicId, String? subtopicId) async {
    if (topicId != null) {
      final topicYears = (await _repo.getTopicYears(topicId)).unwrap().tTopic.years;

      if (subtopicId != null) {
        final subtopicYears = (await _repo.getSubtopicYear(subtopicId)).unwrap().yearSubtopic.years;

        return subtopicYears.where((e) => topicYears.contains(e)).map((e) => e.id).toList();
      }

      return topicYears.map((e) => e.id).toList();
    }

    return null;
  }
}

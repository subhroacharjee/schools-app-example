import 'dart:async';

import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/usecases/learning/region/get_sorted_regions.dart';
import 'package:core_flutter/domain/usecases/update_user_timezone.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/entities/region_info.dart';
import 'package:schools_app/src/domain/entities/school_option.dart';
import 'package:schools_app/src/domain/graphql/onboarding.graphql.repository.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/presentation/blocs/add_school_state.dart';

class AddSchoolBloc extends FutureAsyncSnapshotCubit<AddSchoolState> {
  AddSchoolBloc();

  final _schoolsRepo = SchoolsAppRepository();
  final _onboardingRepo = OnboardingRepository();

  void selectSchool(String? id, String? name) => emitWithData(
        state.data!.copyWith(
          schoolId: id,
          newSchoolName: name,
        ),
      );

  Future<void> selectRegion(String? v) async {
    if (v == null) return;
    final data = state.data!;
    if (data.regionId == v) return;
    emitWithData(
      data.copyWith(
        regionId: v,
        removeNewSchoolName: true,
        removeSchoolId: true,
      ),
    );
  }

  Future<bool> createSchool() async {
    final data = state.data!;
    emitWithData(data.copyWith(loading: true));
    final existingId = data.existingSchoolId;
    if (existingId != null && existingId.isNotEmpty) {
      if (data.schoolId == null) {
        // This is the case where the user has not changed their previous school selection
        return true;
      }
      final ok = await _onboardingRepo.deleteSchool(existingId).when(
            ok: (_) => true,
            err: (_) => false,
          );
      if (!ok) {
        return false;
      }
    }
    final res = await _schoolsRepo
        .createSchool(
      CreateSchoolInput(
        canonicalSchoolID: data.schoolId,
        name: data.newSchoolName!,
        regionID: data.regionId!,
      ),
    )
        .when(
      ok: (ok) {
        emitWithData(data.copyWith(
          loading: false,
          existingSchoolId: ok.createSchool.id,
          removeSchoolId: true,
        ));
        UpdateUserTimeZone(data.regionsMap[data.regionId]!.defaultTimeZone)().when(
          ok: (ok) => log.v('Saved default timezone associated with Region'),
          err: (err) => log.e('Error encountered while setting timezone'),
        );
        return true;
      },
      err: (e) {
        log.e('Error encountered while creating school $e');
        return false;
      },
    );
    return res;
  }

  Future<Iterable<SchoolOption>> searchSchools(String? v) async {
    if (v?.isEmpty ?? true) return <SchoolOption>[];
    return _onboardingRepo
        .searchSchools(v!, state.data!.regionId!)
        .map((ok) => ok.searchSchools.map((e) => SchoolOption(id: e.id, name: e.name)))
        .unwrap();
  }

  @override
  FutureOr<AddSchoolState> resolve() async {
    emitWithData(
      AddSchoolState(regionsMap: {}, loading: true),
    );
    final regionsR = await GetSortedRegions()();
    final regionsMap = {
      for (final r in regionsR.unwrap())
        r.id: RegionInfo(
          title: r.title,
          defaultTimeZone: r.defaultTimeZone,
        ),
    };
    final existingSchool =
        (await _onboardingRepo.getTeacherSchoolInfo().unwrap()).schoolInfoTeacher.schoolInfoSchool;

    if (existingSchool == null) {
      return AddSchoolState(
        regionsMap: regionsMap,
      );
    }

    return AddSchoolState(
      regionsMap: regionsMap,
      regionId: existingSchool.regionID,
      newSchoolName: existingSchool.name,
      existingSchoolId: existingSchool.id,
    );
  }

  void onNewSchoolNameChanged(String? v) => emitWithData(state.data!.copyWith(newSchoolName: v));

  void onSchoolFieldTextChanged(String value) => emitWithData(
        state.data!.copyWith(
          removeSchoolId: true,
          newSchoolName: value,
        ),
      );
}

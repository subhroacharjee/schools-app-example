// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:accounts_library/presentation/accounts_library_configurer.dart'
    as _i3;
import 'package:assessments/assessments.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:learn/learn.dart' as _i8;
import 'package:skill_info/skill_info.dart' as _i19;
import 'package:testing/testing.dart' as _i21;

import 'domain/configurers/schools_accounts_library_configurer.dart' as _i4;
import 'domain/configurers/schools_assessments_configurer.dart' as _i6;
import 'domain/configurers/schools_learn_configurer.dart' as _i9;
import 'domain/configurers/schools_skill_info_configurer.dart' as _i20;
import 'domain/configurers/schools_testing_configurer.dart' as _i22;
import 'domain/graphql/onboarding.graphql.datasource.dart' as _i10;
import 'domain/graphql/onboarding.graphql.repository.dart' as _i12;
import 'domain/graphql/schools_app.graphql.datasource.dart' as _i13;
import 'domain/graphql/schools_app.graphql.repository.dart' as _i14;
import 'domain/graphql/schools_learn.graphql.datasource.dart' as _i15;
import 'domain/graphql/schools_learn.graphql.repository.dart' as _i16;
import 'domain/graphql/schools_skill_info.graphql.datasource.dart' as _i17;
import 'domain/graphql/schools_skill_info.graphql.repository.dart' as _i18;
import 'services/class_info_cache.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AccountsLibraryConfigurer>(
      () => _i4.SchoolsAccountsLibraryConfigurer());
  gh.lazySingleton<_i5.AssessmentsConfigurer>(
      () => _i6.SchoolsAssessmentsConfigurer());
  gh.singletonAsync<_i7.ClassInfoCache>(() => _i7.ClassInfoCache.init());
  gh.lazySingleton<_i8.LearnConfigurer>(() => _i9.SchoolsLearnConfigurer());
  gh.factory<_i10.OnboardingDataSource>(
      () => _i10.OnboardingDataSourceImpl(client: get<_i11.GraphQLClient>()));
  gh.factory<_i12.OnboardingRepository>(() => _i12.OnboardingRepositoryImpl(
      dataSource: get<_i10.OnboardingDataSource>()));
  gh.factory<_i13.SchoolsAppDataSource>(
      () => _i13.SchoolsAppDataSourceImpl(client: get<_i11.GraphQLClient>()));
  gh.factory<_i14.SchoolsAppRepository>(() => _i14.SchoolsAppRepositoryImpl(
      dataSource: get<_i13.SchoolsAppDataSource>()));
  gh.factory<_i15.SchoolsLearnDataSource>(
      () => _i15.SchoolsLearnDataSourceImpl(client: get<_i11.GraphQLClient>()));
  gh.factory<_i16.SchoolsLearnRepository>(() => _i16.SchoolsLearnRepositoryImpl(
      dataSource: get<_i15.SchoolsLearnDataSource>()));
  gh.factory<_i17.SchoolsSkillInfoDataSource>(() =>
      _i17.SchoolsSkillInfoDataSourceImpl(client: get<_i11.GraphQLClient>()));
  gh.factory<_i18.SchoolsSkillInfoRepository>(() =>
      _i18.SchoolsSkillInfoRepositoryImpl(
          dataSource: get<_i17.SchoolsSkillInfoDataSource>()));
  gh.lazySingleton<_i19.SkillInfoConfigurer>(
      () => _i20.SchoolsSkillInfoConfigurer());
  gh.lazySingleton<_i21.TestingConfigurer>(
      () => _i22.SchoolsTestingConfigurer());
  return get;
}

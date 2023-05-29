// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/students.graphql.datasource.dart' as _i3;
import 'domain/students.graphql.repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.StudentsDataSource>(
      () => _i3.StudentsDataSourceImpl(client: get<_i4.GraphQLClient>()));
  gh.factory<_i5.StudentsRepository>(() =>
      _i5.StudentsRepositoryImpl(dataSource: get<_i3.StudentsDataSource>()));
  return get;
}

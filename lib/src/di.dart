import 'package:core/di.dart';
import 'package:injectable/injectable.dart';
import 'package:schools_app/src/di.config.dart';

@InjectableInit()
void configureSchoolsAppDependencies() => $initGetIt(gi);

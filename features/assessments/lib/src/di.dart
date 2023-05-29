import 'package:core/di.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit()
void configureDependencies() => $initGetIt(gi);

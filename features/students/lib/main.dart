import 'package:students/students.dart';
import 'package:core_flutter/presentation/middlewares/portal_middleware.dart';
import 'package:core_flutter/presentation/middlewares/provider_scope_middleware.dart';
import 'package:core_flutter/presentation/shell/shell.dart';
import 'package:schools_app/schools_app.dart';

Future<void> main() async => Shell(
      features: [StudentsFeature()],
      layout: SchoolsAppLayout(
        initialRoute: '/skills',
      ),
      middleware: const [
        PortalMiddleware(),
        ProviderScopeMiddleware(),
      ],
    ).run();

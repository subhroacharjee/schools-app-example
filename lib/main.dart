import 'package:accounts_library/domain/usecases/check_auth_status.dart';
import 'package:core/di.dart';
import 'package:core_flutter/di.dart';
import 'package:core_flutter/presentation/middlewares/portal_middleware.dart';
import 'package:core_flutter/presentation/middlewares/provider_scope_middleware.dart';
import 'package:core_flutter/presentation/shell/shell.dart';
import 'package:core_flutter/services/audio_service.dart';
import 'package:learn/learn.dart' show LearnFeature;
import 'package:learn/learn.dart' hide configureDependencies;
import 'package:pre_signup/pre_signup.dart';
import 'package:schools_app/src/di.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/layout/schools_app_layout.dart';
import 'package:skill_info/skill_info.dart' show SkillInfoFeature;

void main() => Shell(
      features: [
        LearnFeature(showAppBar: false),
        MathsPlatformFeature(),
        TestingFeature(),
        AssessmentsFeature(),
        PreSignupFeature(),
        SkillInfoFeature(),
        StudentsFeature(),
        StatisticsFeature(),
        LearningTasksFeature(),
      ],
      layout: SchoolsAppLayout(),
      middleware: [
        const PortalMiddleware(),
        const ProviderScopeMiddleware(),
      ],
      init: () async {
        await configureDependencies(
          env: Env.dev,
          package: Package.app,
          verbose: true,
        );

        configureSchoolsAppDependencies();
        await CheckAuthStatus()();
        await AudioService().initSounds(only: [Sound.endOfTest]);
      },
    ).run();

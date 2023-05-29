// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:accounts_library/domain/entities/user_sign_up_details.dart';
import 'package:accounts_library/presentation/accounts_library_configurer.dart';
import 'package:core/di.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core/domain/entities/user/user.dart' hide User;
import 'package:core/domain/repositories/user/user_repository.dart';
import 'package:core/domain/usecases/user/current_user.dart';
import 'package:core/domain/usecases/user_id/const_user_id.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:core_flutter/domain/usecases/update_user_timezone.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/domain/graphql/onboarding.graphql.repository.dart';

@LazySingleton(as: AccountsLibraryConfigurer)
class SchoolsAccountsLibraryConfigurer extends AccountsLibraryConfigurer with ClassInfoCacheMixin {
  final joinedClassNotifier = ValueNotifier<bool?>(null);

  final _onboardingRepo = OnboardingRepository();

  @override
  FutureOr<void> onAuthUserCreated(BuildContext context, UserSignUpDetails details) async {
    final user = details.authUser;
    final split = details.name.split(' ');
    final firstName = split.isNotEmpty ? split[0] : null;
    final lastName = split.length > 1 ? split[1] : null;
    switch (details.userType) {
      case UserType.student:
        await Future.wait([
          UserRepository().create(
            StudentUser(
              id: user.uid,
              email: user.email!,
              firstName: firstName,
              lastName: lastName,
            ),
          ),
          _onboardingRepo.createSchoolStudent(),
        ]);
        classInfoCache.setTopicId(null);
        classInfoCache.setSubtopicId(null);

        final code = context.read<SchoolsLayoutStateMachine>().handledClassCodes.keys.first;
        await joinClass(code);

        break;
      case UserType.teacher:
        await Future.wait(
          [
            UserRepository().create(
              TeacherUser(
                id: user.uid,
                email: user.email!,
                firstName: firstName,
                lastName: lastName,
              ),
            ),
            _onboardingRepo.createTeacher(),
          ],
        );
        break;
      default:
        return;
    }
  }

  @override
  FutureOr<void> onLoggedIn(BuildContext context) async {
    final sm = context.read<SchoolsLayoutStateMachine>();
    final code = sm.handledClassCodes.keys.firstOrNull;

    if (code != null) {
      await joinClass(code);
    }

    Navigator.pop(context);
    _resolveTeacherOnboardingState(context);
  }

  @override
  FutureOr<void> onSignedUp(BuildContext context, UserSignUpDetails details) async {
    Navigator.popUntil(context, (route) => route.isFirst);
    _resolveTeacherOnboardingState(context);
  }

  Future<void> joinClass(String? code) async {
    if (code == null) {
      joinedClassNotifier.value = false;
      return;
    }

    try {
      (await _onboardingRepo.joinClass(JoinClassInput(code: code))).unwrap();
      await _onboardingRepo.getStudentTeacherId(activeUserId().unwrap()).when(
            ok: (ok) async {
              final teacherId = ok.studentTeacherId.studentClass.firstOrNull?.studentTeacher
                  .firstOrNull?.studentTeacherUser.id;

              if (teacherId != null) {
                await GetCurrentUser(ConstUserId(teacherId))().when(
                  ok: (teacher) async => UpdateUserTimeZone((teacher as TeacherUser).timeZone!)(),
                  err: log.e,
                );
              }
            },
            err: log.e,
          );
      joinedClassNotifier.value = true;
    } catch (e) {
      joinedClassNotifier.value = false;
    }
  }

  void _resolveTeacherOnboardingState(BuildContext context) {
    final sm = context.read<SchoolsLayoutStateMachine>();
    final node = sm.node;
    if (node is TeacherLayoutNode) {
      node.resolveOnboardingState();
    }
  }
}

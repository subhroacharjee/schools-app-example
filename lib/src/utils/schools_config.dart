import 'dart:async';

import 'package:core/di.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:learn/learn.dart';
import 'package:schools_app/src/domain/configurers/schools_learn_configurer.dart';

typedef ConfigCallback<T> = FutureOr<T> Function();

class SchoolsConfig<T> {
  SchoolsConfig({
    required this.teacher,
    required this.student,
    required this.preSignup,
    this.accessedStudent,
  });

  final ConfigCallback<T> teacher;
  final ConfigCallback<T> student;
  final ConfigCallback<T> preSignup;
  final ConfigCallback<T>? accessedStudent;
  final UserType? _userType = (gi<LearnConfigurer>() as SchoolsLearnConfigurer).userType;

  FutureOr<T> call() {
    if (_userType == UserType.teacher) {
      if (platformUserId().isSome() && accessedStudent != null) {
        return accessedStudent!.call();
      } else {
        return teacher();
      }
    } else if (_userType == UserType.student) {
      return student();
    } else {
      return preSignup();
    }
  }
}

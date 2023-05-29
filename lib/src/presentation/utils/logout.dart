// ignore_for_file: use_build_context_synchronously

import 'package:accounts_library/domain/repositories/auth_repository.dart';
import 'package:core/di.dart';
import 'package:flutter/material.dart';
import 'package:learning_library/utils/learning_cache_service.dart';
import 'package:schools_app/schools_app.dart';

Future<void> logOut(BuildContext context) async {
  gi<AuthRepository>().signOut();
  // HACK: Passing a non-null classId will cause the cache to be cleared
  LearningCacheService().clearKnowledgeCache('');
  gi<ClassInfoCache>().clear();
}

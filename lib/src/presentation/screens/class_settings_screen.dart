import 'package:core_flutter/presentation/screens/settings_screen/settings_page.dart';
import 'package:core_flutter/presentation/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_library/utils/learning_cache_service.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/danger_zone_bloc.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/utils/build_context_extensions.dart';
import 'package:schools_app/src/presentation/widgets/class_settings/class_info_section.dart';
import 'package:schools_app/src/presentation/widgets/class_settings/danger_zone_section.dart';
import 'package:schools_app/src/presentation/widgets/class_settings/students_section.dart';
import 'package:schools_app/src/presentation/widgets/settings_app_bar.dart';

class ClassSettingsScreen extends StatefulWidget {
  const ClassSettingsScreen({required this.classId, super.key});

  final String classId;

  @override
  State<ClassSettingsScreen> createState() => _ClassSettingsScreenState();
}

class _ClassSettingsScreenState extends State<ClassSettingsScreen> {
  late final _dangerZoneBloc = DangerZoneBloc(classId: widget.classId);

  @override
  void dispose() {
    _dangerZoneBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _dangerZoneBloc,
        child: Column(
          children: [
            const SettingsAppBar(title: 'Class Settings'),
            Expanded(
              child: SettingsScreen(
                showSidebar: false,
                showPageTitle: false,
                pages: [
                  SettingsPage(
                    title: 'Class',
                    separatorBuilder: (_) => const SizedBox(height: 40, child: Divider()),
                    sections: [
                      ClassInfoSection(
                        classId: widget.classId,
                        onYearUpdated: () {
                          LearningCacheService().clearKnowledgeCache(widget.classId);
                          context.go(Routes.curriculum.blueprint);
                        },
                      ),
                      StudentsSection(classId: widget.classId),
                      if (context.teacherNode.state.data!.classesCount > 1)
                        DangerZoneSection(
                          classId: widget.classId,
                          bloc: _dangerZoneBloc,
                        ),
                    ],
                    icon: Icons.group,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

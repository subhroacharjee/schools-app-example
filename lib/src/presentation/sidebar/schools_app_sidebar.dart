import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/student_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_nav_section.dart';
import 'package:schools_app/src/presentation/sidebar/student_sidebar_section.dart';
import 'package:schools_app/src/presentation/sidebar/teacher_sidebar_section.dart';

class SchoolsAppSidebar extends StatelessWidget {
  const SchoolsAppSidebar({
    required this.node,
    Key? key,
  }) : super(key: key);

  final SchoolsLayoutNode node;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: node.state.data!.sidebarBloc,
      child: Container(
        color: Theme.of(context).canvasColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (node is TeacherLayoutNode) ...[
              const Align(
                alignment: Alignment.topLeft,
                child: TeacherSidebarSection(),
              ),
              const SizedBox(height: 16),
            ],
            if (node is! StudentLayoutNode) const SidebarNavSection(),
            if (node is StudentLayoutNode) const StudentSidebarSection(),
            const Spacer(),
            Image.asset(
              'packages/assessments/assets/logo_mono.png',
              height: 32,
              errorBuilder: (_, __, ___) => Container(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/student_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/unauthenticated_layout_node.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state_machine.dart';

extension BuildContextX on BuildContext {
  SchoolsLayoutStateMachine get stateMachine => read<SchoolsLayoutStateMachine>();
  TeacherLayoutNode get teacherNode => read<SchoolsLayoutNode>() as TeacherLayoutNode;
  StudentLayoutNode get studentNode => read<SchoolsLayoutNode>() as StudentLayoutNode;
  UnauthenticatedLayoutNode get unauthenticatedNode =>
      read<SchoolsLayoutNode>() as UnauthenticatedLayoutNode;
}

// ignore_for_file: implementation_imports

import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:students/src/domain/entities/student_comprehension.dart';
import 'package:students/src/presentation/widgets/add_students_button.dart';
import 'package:students/src/presentation/widgets/student_table.dart';

class NoStudentsScreen extends StatefulWidget {
  const NoStudentsScreen({Key? key}) : super(key: key);

  @override
  State<NoStudentsScreen> createState() => _NoStudentsScreenState();
}

class _NoStudentsScreenState extends State<NoStudentsScreen> {
  late final TeacherLayoutNode _teacherLayoutNode;
  late final List<StudentComprehension> noStudentsMockComprehensions;

  late List<StudentComprehension> displayStudentComprehensions;
  final StudentComprehension noStudentsMockClassAverage = const StudentComprehension(
    studentId: "",
    studentName: "Class Average",
    correct: 0.78,
    wrong: 0.22,
  );
  @override
  void initState() {
    super.initState();
    _teacherLayoutNode = context.read<SchoolsLayoutNode>() as TeacherLayoutNode;
    noStudentsMockComprehensions = const [
      StudentComprehension(
        studentId: "",
        studentName: "Tiffany Cassin",
        correct: 0.92,
        wrong: 0.08,
      ),
      StudentComprehension(
        studentId: "",
        studentName: "Dorothy Rodriguez",
        correct: 0.86,
        wrong: 0.14,
      ),
      StudentComprehension(
        studentId: "",
        studentName: "Geraldine Nikolaus",
        correct: 0.77,
        wrong: 0.23,
      ),
      StudentComprehension(
        studentId: "",
        studentName: "Hattie Lynch",
        correct: 0.68,
        wrong: 0.32,
      ),
      StudentComprehension(
        studentId: "",
        studentName: "Kelli Auer",
        correct: 0.64,
        wrong: 0.36,
      ),
    ];
    displayStudentComprehensions = noStudentsMockComprehensions;
  }

  void filter(String value) {
    setState(() {
      displayStudentComprehensions = noStudentsMockComprehensions
          .where((studentComprehension) =>
              studentComprehension.studentName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 179.64, right: 179.64),
            child: Stack(
              children: [
                Transform(
                  transform: Matrix4.identity()..scale(0.7, 0.7, 1.0),
                  child: Card(
                    elevation: 5,
                    child: SizedBox(
                      width: 800,
                      child: StudentTable.onlyNames(
                        classComprehension: noStudentsMockClassAverage,
                        studentComprehensions: displayStudentComprehensions,
                      ),
                    ),
                  ),
                ),
                Transform(
                  transform: Matrix4.identity()
                    ..scale(0.7, 0.7, 1.0)
                    ..translate(750, -8, 0),
                  child: Card(
                    elevation: 10,
                    child: SizedBox(
                      width: 400,
                      child: StudentTable.onlyComprehensions(
                        classComprehension: noStudentsMockClassAverage,
                        studentComprehensions: displayStudentComprehensions,
                      ),
                    ),
                  ),
                ),
                Transform(
                  transform: Matrix4.identity()
                    ..scale(0.5, 0.5, 1.0)
                    ..translate(-50, -25, 0),
                  child: Card(
                    elevation: 15,
                    child: SizedBox(
                      width: 330,
                      child: SearchBar.medium(
                        onChanged: (value) => filter(value),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const TText("Your class doesn't have any students yet",
                  style: TTextStyle.headline6()),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: BlocBuilder<TeacherLayoutNode, AsyncSnapshot<TeacherLayoutState>>(
                  bloc: _teacherLayoutNode,
                  builder: (context, state) {
                    if (state.data?.accessedClass != null) {
                      return AddStudentsButton(classCode: state.data!.accessedClass!.code);
                    }
                    return empty;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

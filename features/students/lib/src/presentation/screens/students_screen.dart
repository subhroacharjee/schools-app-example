// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'package:components/components.dart';
import 'package:core/extensions/async_snapshot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/schools_app.dart';
import 'package:students/src/presentation/blocs/student_comprehension_bloc.dart';
import 'package:students/src/presentation/screens/no_students_screen.dart';
import 'package:students/src/presentation/widgets/add_students_button.dart';
import 'package:students/src/presentation/widgets/student_table.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({Key? key}) : super(key: key);

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> with ClassInfoCacheMixin {
  final _studentComprehensionBloc = StudentComprehensionsBloc();
  late final TeacherLayoutNode _teacherLayoutNode;
  @override
  void initState() {
    super.initState();
    _teacherLayoutNode = context.read<SchoolsLayoutNode>() as TeacherLayoutNode;
  }

  @override
  void dispose() {
    _studentComprehensionBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _studentComprehensionBloc,
        child: BlocBuilder<StudentComprehensionsBloc, AsyncSnapshot<StudentComprehensionsState>>(
          bloc: _studentComprehensionBloc,
          builder: (_, snap) {
            return snap.when(
                data: (state) {
                  final studentComprehensions = state.studentComprehensions;
                  return _studentComprehensionBloc.allComprehensions.isEmpty
                      ? const Center(child: NoStudentsScreen())
                      : Container(
                          margin: const EdgeInsets.fromLTRB(10, 24, 28, 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Average Student Comprehension
                              Card(
                                margin: EdgeInsets.zero,
                                color: TColors.primary.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: TColors.primary.shade600,
                                  ),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      const TText('Average Student Comprehension',
                                          style: TTextStyle.buttonS(color: TColors.black)),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: ProgressBar(
                                            correct: state.averageComprehension.correct,
                                            wrong: state.averageComprehension.wrong,
                                            percentColor: TColors.primary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Search box and button
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 32,
                                      width: 210,
                                      child: SearchBar.medium(
                                        onChanged: (value) {
                                          _studentComprehensionBloc.filter(value);
                                        },
                                      ),
                                    ),
                                    BlocBuilder<TeacherLayoutNode,
                                        AsyncSnapshot<TeacherLayoutState>>(
                                      bloc: _teacherLayoutNode,
                                      builder: (context, state) {
                                        if (state.data?.accessedClass != null) {
                                          return AddStudentsButton(
                                              classCode: state.data!.accessedClass!.code);
                                        }

                                        return empty;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              // Data Table with two columns
                              Flexible(
                                child: StudentTable(
                                  studentComprehensions: studentComprehensions,
                                ),
                              ),
                            ],
                          ),
                        );
                },
                err: (_, __) => const Center(
                      child: TText(
                        'Failed to load students',
                        style: TTextStyle.boldS(color: TColors.danger),
                      ),
                    ),
                loading: () => const Center(child: CircularProgressIndicator()));
          },
        ),
      ),
    );
  }
}

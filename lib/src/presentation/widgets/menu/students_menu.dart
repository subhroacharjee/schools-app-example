import 'package:components/components.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/presentation/widgets/cursor_event.dart';
import 'package:core_flutter/presentation/widgets/legacy_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/presentation/layout/bloc/class_students_bloc.dart';
import 'package:schools_app/src/presentation/layout/bloc/schools_app_bar_bloc.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';
import 'package:schools_app/src/presentation/widgets/menu/student_item_content.dart';
import 'package:schools_app/src/presentation/widgets/search_box.dart';

final checkIcon = Container(
  height: 24,
  width: 24,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
  ),
  child: const Icon(
    Icons.check,
    size: 16,
    color: TColors.primary,
  ),
);

class StudentsMenu extends StatefulWidget {
  const StudentsMenu({
    required this.onAddStudent,
    required this.node,
    Key? key,
  }) : super(key: key);

  final VoidCallback onAddStudent;
  final TeacherLayoutNode node;

  @override
  State<StudentsMenu> createState() => _StudentsMenuState();
}

class _StudentsMenuState extends State<StudentsMenu> {
  @override
  Widget build(BuildContext context) {
    final bloc = widget.node.state.data!.classStudentsBloc;
    return Material(
      child: Container(
        height: 385,
        width: 270,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: TColors.black.withOpacity(0.07),
          ),
          color: TColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              blurRadius: 50,
              spreadRadius: -12,
              offset: const Offset(0, 25),
            ),
          ],
        ),
        child: Column(
          children: [
            BorderButton.medium(
              onPressed: widget.onAddStudent,
              borderColor: TColors.primary.withOpacity(0.5),
              padding: EdgeInsets.zero,
              shadowOffset: const Offset(0, 2),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'packages/schools_app/assets/link.png',
                      width: 22,
                    ),
                    const SizedBox(width: 8),
                    const TText(
                      'Add Student',
                      style: TTextStyle.boldS(
                        color: TColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                    color: TColors.black.withOpacity(0.06),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        color: searchBg,
                        padding: const EdgeInsets.all(12),
                        child: SearchBox(onChanged: bloc.search),
                      ),
                      Expanded(
                        child: BlocBuilder<ClassStudentsBloc, AsyncSnapshot<ClassStudentsState>>(
                          bloc: bloc,
                          builder: (context, snap) {
                            final divider = Divider(
                              height: 0,
                              thickness: 1,
                              color: TColors.black.withOpacity(0.04),
                            );
                            return snap.whenData(
                              data: (data) {
                                final students = data.students;
                                return SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: CursorEvent(
                                          onTap: () async {
                                            await widget.node.accessStudent(null);
                                            if (mounted) {
                                              context.read<SchoolsAppBarBloc>().refresh();
                                            }
                                          },
                                          child: TextIconTile(
                                            text: 'All Students',
                                            leadingIcon: Container(
                                              height: 24,
                                              width: 24,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: allStudentIcon.withOpacity(0.12),
                                                shape: BoxShape.circle,
                                              ),
                                              child: SvgPicture.asset(
                                                'packages/schools_app/assets/all_student_icon.svg',
                                                height: 9,
                                              ),
                                            ),
                                            trailingIcon:
                                                data.accessedStudentId == null ? checkIcon : null,
                                          ),
                                        ),
                                      ),
                                      divider,
                                      if (students == null)
                                        const Padding(
                                          padding: EdgeInsets.only(top: 16.0),
                                          child: Center(
                                            child: DefaultCircularProgressIndicator(
                                              color: TColors.primary,
                                            ),
                                          ),
                                        )
                                      else
                                        ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: students.length,
                                          itemBuilder: (context, index) {
                                            final s = students[index];
                                            return CursorEvent(
                                              onTap: () async {
                                                await widget.node.accessStudent(s.id);
                                                if (mounted) {
                                                  context.read<SchoolsAppBarBloc>().refresh();
                                                  context.go(Routes.curriculum.blueprint);
                                                }
                                              },
                                              child: _StudentItem(
                                                name: s.name,
                                                isSelected: data.accessedStudentId == s.id,
                                              ),
                                            );
                                          },
                                          separatorBuilder: (_, __) => divider,
                                        ),
                                    ],
                                  ),
                                );
                              },
                              orElse: () => const Center(
                                child: DefaultCircularProgressIndicator(color: TColors.primary),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StudentItem extends StatelessWidget {
  const _StudentItem({
    required this.name,
    required this.isSelected,
  });

  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      child: Row(
        children: [
          StudentItemAvatar(name: name),
          const SizedBox(width: 10),
          TText(name, style: const TTextStyle.boldS()),
          if (isSelected) ...[
            const Spacer(),
            checkIcon,
          ],
        ],
      ),
    );
  }
}

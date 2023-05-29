import 'dart:math';

import 'package:components/components.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/domain/entities/class_item_info.dart';
import 'package:schools_app/src/presentation/layout/bloc/schools_app_bar_bloc.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';
import 'package:schools_app/src/presentation/widgets/menu/all_classes_menu.dart';
import 'package:schools_app/src/presentation/widgets/menu/student_item_content.dart';
import 'package:schools_app/src/presentation/widgets/menu/students_menu.dart';
import 'package:schools_app/src/presentation/widgets/popups/add_class_popup.dart';
import 'package:schools_app/src/presentation/widgets/popups/share_class_code_popup.dart';

import '../layout/nodes/teacher_layout_node.dart';

const border = BorderRadius.only(
  bottomLeft: Radius.circular(20),
  bottomRight: Radius.circular(20),
);

class TeacherSidebarSection extends StatefulWidget {
  const TeacherSidebarSection({
    Key? key,
  }) : super(key: key);

  @override
  State<TeacherSidebarSection> createState() => _TeacherSidebarSectionState();
}

class _TeacherSidebarSectionState extends State<TeacherSidebarSection> {
  final _classesMenuController = AnimatedMenuController();
  final _studentsMenuController = AnimatedMenuController();

  @override
  Widget build(BuildContext context) {
    final node = context.read<SchoolsLayoutNode>() as TeacherLayoutNode;
    return BlocBuilder<TeacherLayoutNode, AsyncSnapshot<TeacherLayoutState>>(
      bloc: node,
      builder: (context, state) {
        return state.whenData(
          data: (data) {
            final accessedClass = data.accessedClass;
            return Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: TColors.black.withOpacity(0.07),
                ),
                color: TColors.white,
                boxShadow: [
                  BoxShadow(
                    color: TColors.black.withOpacity(0.04),
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (accessedClass != null) ...[
                    _AllClassesWidget(
                      accessedClass: accessedClass,
                      classes: data.classes,
                      menuController: _classesMenuController,
                    ),
                    const Divider(
                      height: 1,
                    ),
                    if (data.accessedClass!.hasStudents)
                      AnimatedMenu(
                        offset: const Offset(10, 0),
                        scaleAnimationAlignment: Alignment.topLeft,
                        controller: _studentsMenuController,
                        overlay: BlocProvider.value(
                          value: context.read<SchoolsAppBarBloc>(),
                          child: StudentsMenu(
                            node: node,
                            onAddStudent: () {
                              _studentsMenuController.close();
                              showPopup(
                                context: context,
                                child: ShareClassPopup(code: accessedClass.code),
                              );
                            },
                          ),
                        ),
                        child: data.accessedStudent == null
                            ? _TeacherSidebarItem(
                                text: 'All Students',
                                controller: _studentsMenuController,
                                hoverBorderRadius: border,
                                onTap: _studentsMenuController.open,
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
                              )
                            : _TeacherSidebarItem(
                                text: data.accessedStudent!.name,
                                controller: _studentsMenuController,
                                hoverBorderRadius: border,
                                onTap: _studentsMenuController.open,
                                leadingIcon: StudentItemAvatar(
                                  name: data.accessedStudent!.name,
                                ),
                              ),
                      )
                    else
                      _AddStudentsWidget(accessedClass: accessedClass),
                  ] else
                    _TeacherSidebarItemContainer(
                      hoverBorderRadius: const BorderRadius.all(Radius.circular(20)),
                      backgroundColor: TColors.danger.shade100,
                      onTap: () => showPopup(
                        child: const AddClassPopup(),
                        context: context,
                      ),
                      child: Center(
                        child: TText(
                          'Add Class +',
                          style: TTextStyle.mediumS(color: TColors.danger.shade900),
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
          orElse: () => empty,
        );
      },
    );
  }
}

class _AddStudentsWidget extends StatefulWidget {
  const _AddStudentsWidget({required this.accessedClass});
  final ClassItemInfo accessedClass;

  @override
  State<_AddStudentsWidget> createState() => __AddStudentsWidgetState();
}

class __AddStudentsWidgetState extends State<_AddStudentsWidget> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (_) => setState(() => _isHovering = false),
      onEnter: (_) => setState(() => _isHovering = true),
      child: _TeacherSidebarItemContainer(
        hoverBorderRadius: border,
        backgroundColor: _isHovering ? TColors.primary.shade200 : TColors.primary.shade100,
        onTap: () => showPopup(
          child: ShareClassPopup(code: widget.accessedClass.code),
          context: context,
        ),
        child: Center(
          child: TText(
            'Add Students  🔗',
            style: TTextStyle.mediumS(color: TColors.black.shade900),
          ),
        ),
      ),
    );
  }
}

class _AllClassesWidget extends StatefulWidget {
  const _AllClassesWidget({
    required this.menuController,
    required this.accessedClass,
    required this.classes,
    Key? key,
  }) : super(key: key);

  final AnimatedMenuController menuController;
  final ClassItemInfo accessedClass;
  final List<ClassItemInfo> classes;

  @override
  State<_AllClassesWidget> createState() => _AllClassesWidgetState();
}

class _AllClassesWidgetState extends State<_AllClassesWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedMenu(
      offset: const Offset(10, 0),
      scaleAnimationAlignment: Alignment.topLeft,
      controller: widget.menuController,
      overlay: AllClassesMenu(
        accessedClass: widget.accessedClass,
        classes: widget.classes,
        controller: widget.menuController,
        onSettingsClicked: (id) async {
          widget.menuController.close();
          await Future.delayed(const Duration(milliseconds: 200));

          if (mounted) {
            context.go('/class-settings/$id');
          }
        },
        onAddClass: () async {
          widget.menuController.close();
          final r = await showPopup<AddClassPopupAction>(
            context: context,
            opacity: 0.5,
            child: const AddClassPopup(),
          );
          switch (r) {
            case AddClassPopupAction.added:
              // ignore: use_build_context_synchronously
              context.go(Routes.curriculum.blueprint);
              break;
            default:
              break;
          }
        },
      ),
      child: _TeacherSidebarItem(
        text: widget.accessedClass.name,
        controller: widget.menuController,
        hoverBorderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        onTap: widget.menuController.open,
        leadingIcon: Container(
          height: 24,
          width: 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: studentNameIcon.withOpacity(0.12),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            'packages/schools_app/assets/add_class_icon.svg',
            height: 9,
          ),
        ),
      ),
    );
  }
}

class _TeacherSidebarItem extends StatelessWidget {
  const _TeacherSidebarItem({
    required this.text,
    required this.hoverBorderRadius,
    required this.onTap,
    required this.controller,
    this.leadingIcon,
    Color backgroundColor = TColors.transparent,
    Key? key,
  })  : _backgroundColor = backgroundColor,
        super(key: key);

  final String text;
  final Widget? leadingIcon;
  final BorderRadius hoverBorderRadius;
  final VoidCallback onTap;
  final AnimatedMenuController controller;
  final Color _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return _TeacherSidebarItemContainer(
      onTap: onTap,
      hoverBorderRadius: hoverBorderRadius,
      backgroundColor: _backgroundColor,
      child: Row(
        children: [
          if (leadingIcon != null) leadingIcon!,
          const SizedBox(width: 12),
          TText(
            text,
            style: const TTextStyle.mediumS(),
          ),
          const Spacer(),
          ValueListenableBuilder<bool>(
            valueListenable: controller,
            builder: (context, value, child) {
              return Transform.rotate(
                angle: value ? 270 / 180 * pi : 0,
                child: child,
              );
            },
            child: SvgPicture.asset(
              Images.dropdown,
              height: 6,
            ),
          ),
        ],
      ),
    );
  }
}

class _TeacherSidebarItemContainer extends StatelessWidget {
  const _TeacherSidebarItemContainer({
    required this.child,
    required this.hoverBorderRadius,
    required this.onTap,
    this.backgroundColor = TColors.transparent,
  });

  final BorderRadius hoverBorderRadius;
  final VoidCallback onTap;
  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: hoverBorderRadius,
      child: MaterialInkWell(
        onTap: onTap,
        hoverColor: TColors.black.withOpacity(0.02),
        splashColor: TColors.black.withOpacity(0.02),
        borderRadius: hoverBorderRadius,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          color: backgroundColor,
          child: child,
        ),
      ),
    );
  }
}

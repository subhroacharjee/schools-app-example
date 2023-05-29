import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schools_app/src/domain/entities/class_item_info.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';

class AllClassesMenu extends StatefulWidget {
  const AllClassesMenu({
    required this.accessedClass,
    required this.classes,
    required this.onAddClass,
    required this.onSettingsClicked,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final ClassItemInfo accessedClass;
  final List<ClassItemInfo> classes;
  final VoidCallback onAddClass;
  final ValueChanged<String> onSettingsClicked;
  final AnimatedMenuController controller;

  @override
  State<AllClassesMenu> createState() => _AllClassesMenuState();
}

class _AllClassesMenuState extends State<AllClassesMenu> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: TColors.black.withOpacity(0.1),
        ),
        color: white,
        boxShadow: [
          BoxShadow(
            color: TColors.black.withOpacity(0.15),
            blurRadius: 50,
            spreadRadius: -12,
            offset: const Offset(0, 25),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _AddClassWidget(
            onAddClass: widget.onAddClass,
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(
                color: TColors.black.withOpacity(0.06),
              ),
            ),
            constraints: const BoxConstraints(maxHeight: 350),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _ClassItemWidget(
                        onItemTapped: widget.controller.close,
                        onSettingsClicked: widget.onSettingsClicked,
                        index: widget.classes.indexOf(widget.accessedClass),
                        name: widget.accessedClass.name,
                        id: widget.accessedClass.id,
                        isSelected: true,
                      ),
                      for (final c in widget.classes)
                        if (c.id != widget.accessedClass.id)
                          _ClassItemWidget(
                            onItemTapped: widget.controller.close,
                            onSettingsClicked: widget.onSettingsClicked,
                            index: widget.classes.indexOf(c),
                            name: c.name,
                            id: c.id,
                            isSelected: false,
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ClassItemWidget extends StatelessWidget {
  const _ClassItemWidget({
    required this.index,
    required this.name,
    required this.id,
    required this.isSelected,
    required this.onItemTapped,
    required this.onSettingsClicked,
    Key? key,
  }) : super(key: key);

  final String name;
  final String id;
  final bool isSelected;
  final int index;
  final Function() onItemTapped;
  final ValueChanged<String> onSettingsClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index.isOdd ? background : white,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () async {
            if (isSelected) return;
            final teachersNode = context.read<SchoolsLayoutNode>() as TeacherLayoutNode;

            onItemTapped();
            await teachersNode.accessClass(id);
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: TextIconTile(
              text: name,
              textStyle: TTextStyle.boldS(
                color: isSelected ? TColors.primary : TColors.black,
              ),
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
              trailingIcon: GestureDetector(
                onTap: () => onSettingsClicked(id),
                child: const _SettingsIconWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SettingsIconWidget extends StatefulWidget {
  const _SettingsIconWidget();

  @override
  State<_SettingsIconWidget> createState() => __SettingsIconWidgetState();
}

class __SettingsIconWidgetState extends State<_SettingsIconWidget> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (_) => setState(() => _isHovering = false),
      onEnter: (_) => setState(() => _isHovering = true),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SvgPicture.asset(
          'packages/schools_app/assets/settings_icon.svg',
          height: 13,
          color: _isHovering ? TColors.primary : null,
        ),
      ),
    );
  }
}

class _AddClassWidget extends StatelessWidget {
  const _AddClassWidget({
    required this.onAddClass,
    Key? key,
  }) : super(key: key);

  final VoidCallback onAddClass;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: TColors.white,
        border: Border.all(
          width: 1.4,
          color: TColors.primary.withOpacity(0.4),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 2,
            color: TColors.black.withOpacity(0.1),
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: MaterialInkWell(
        onTap: onAddClass,
        hoverColor: TColors.transparent,
        splashColor: TColors.primary.withOpacity(0.02),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: const TText(
            '+  Add Class',
            style: TTextStyle.boldS(
              color: TColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}

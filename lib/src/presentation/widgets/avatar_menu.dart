import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/cursor_event.dart';
import 'package:core_flutter/presentation/widgets/dismissible_portal.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/presentation/layout/nodes/student_layout_node.dart';
import 'package:schools_app/src/presentation/layout/nodes/teacher_layout_node.dart';
import 'package:schools_app/src/presentation/utils/build_context_extensions.dart';
import 'package:schools_app/src/presentation/utils/logout.dart';

class AvatarMenu extends StatefulWidget {
  const AvatarMenu({super.key});

  @override
  State<AvatarMenu> createState() => _AvatarMenuState();
}

class _AvatarMenuState extends State<AvatarMenu> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    String? name;
    final node = context.stateMachine.node;
    if (node is StudentLayoutNode) {
      name = node.state.data?.rootUser?.firstName;
    } else if (node is TeacherLayoutNode) {
      name = node.state.data?.rootUser?.firstName;
    }

    return DismissiblePortal(
      portal: Container(
        width: 217,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              spreadRadius: -3,
              offset: const Offset(0, 10),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              spreadRadius: -2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _PopUpItem(
              title: 'Settings',
              icon: Icons.settings,
              onTap: () => context.go('/settings'),
            ),
            const Divider(),
            _PopUpItem(
              title: 'Log Out',
              icon: Icons.logout,
              color: Colors.red,
              onTap: () => logOut(context),
            ),
          ],
        ),
      ),
      visible: isVisible,
      childAnchor: Alignment.bottomLeft,
      portalAnchor: Alignment.topRight,
      onTapOutside: () => changeVisibility(false),
      child: SizedBox(
        height: 40,
        width: 40,
        child: Material(
          color: TColors.white,
          shape: const CircleBorder(),
          elevation: 8,
          shadowColor: TColors.black.shade300,
          child: CursorEvent(
            onTap: () => changeVisibility(!isVisible),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: TColors.white,
              child: SizedBox(
                width: 32,
                height: 32,
                child: Avatar.color(
                  name ?? '',
                  avatarSize: AvatarSize.small,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changeVisibility(bool v) {
    if (v != isVisible) {
      setState(() => isVisible = v);
    }
  }
}

class _PopUpItem extends StatefulWidget {
  const _PopUpItem({
    required this.title,
    required this.icon,
    this.color,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Color? color;
  final VoidCallback? onTap;

  @override
  State<_PopUpItem> createState() => _PopUpItemState();
}

class _PopUpItemState extends State<_PopUpItem> {
  bool isHovered = false;

  void changeHoverState(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CursorEvent(
      onEnter: (_) => changeHoverState(true),
      onExit: (_) => changeHoverState(false),
      onTap: widget.onTap != null
          ? () {
              widget.onTap!();
            }
          : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        color: isHovered ? tuteroBlack06 : null,
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: widget.color,
            ),
            const SizedBox(width: 8),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: medium,
                color: tuteroBlack65,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

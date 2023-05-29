import 'package:assessments/src/domain/entity/assessment_status.dart';
import 'package:components/components.dart';
import 'package:core_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Shows the menu icon and displays a menu when clicked
class AssessmentActionMenu extends StatefulWidget {
  const AssessmentActionMenu({
    required this.status,
    required this.onPaused,
    required this.onTapStop,
    required this.onTapEdit,
    required this.hasStarted,
    required this.onTapRemove,
    Key? key,
  }) : super(key: key);

  final ValueChanged<bool> onPaused;
  final VoidCallback onTapEdit;
  final VoidCallback onTapStop;
  final VoidCallback onTapRemove;
  final AssessmentStatus status;
  final bool hasStarted;

  @override
  State<AssessmentActionMenu> createState() => _AssessmentActionMenuState();
}

class _AssessmentActionMenuState extends State<AssessmentActionMenu>
    with SingleTickerProviderStateMixin {
  final controller = AnimatedMenuController();

  @override
  Widget build(BuildContext context) {
    return AnimatedMenu(
      controller: controller,
      childAnchor: Alignment.bottomRight,
      overlayAnchor: Alignment.topRight,
      scaleAnimationAlignment: Alignment.topRight,
      offset: const Offset(10, 10),
      overlay: Container(
        height: 93,
        width: 133,
        decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: TColors.black.shade100),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 10,
              color: TColors.black.withOpacity(0.12),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: _MenuIconTile(
                iconName: widget.hasStarted
                    ? widget.status == AssessmentStatus.paused
                        ? 'packages/assessments/assets/play_icon.svg'
                        : 'packages/assessments/assets/pause_icon.svg'
                    : 'packages/assessments/assets/edit_icon.svg',
                title: widget.hasStarted
                    ? widget.status == AssessmentStatus.paused
                        ? 'Resume'
                        : 'Pause'
                    : 'Edit',
                color: editBookmark,
                onTap: () {
                  controller.close();
                  if (widget.hasStarted) {
                    widget.onPaused(widget.status != AssessmentStatus.paused);
                  } else {
                    widget.onTapEdit();
                  }
                },
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: _MenuIconTile(
                iconName: widget.hasStarted
                    ? 'packages/assessments/assets/stop_icon.svg'
                    : 'packages/assessments/assets/remove_icon.svg',
                title: widget.hasStarted ? 'End' : 'Remove',
                color: deleteBookmark,
                onTap: () {
                  controller.close();
                  if (widget.hasStarted) {
                    widget.onTapStop();
                  } else {
                    widget.onTapRemove();
                  }
                },
              ),
            ),
          ],
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: InkWell(
          onTap: () {
            controller.open();
          },
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: const SizedBox(
            height: 32,
            width: 32,
            child: Icon(
              Icons.more_horiz,
              color: TColors.black,
              size: 23,
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuIconTile extends StatelessWidget {
  const _MenuIconTile({
    required this.iconName,
    required this.title,
    required this.color,
    required this.onTap,
    // ignore: unused_element
    this.disabled = false,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String iconName;
  final String title;
  final Color color;
  final bool disabled;
  @override
  Widget build(BuildContext context) {
    final disabledColor = tuteroBlack.withOpacity(0.3);

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: disabled ? null : onTap,
        child: Row(
          children: [
            const SizedBox(width: 15),
            SvgPicture.asset(
              iconName,
              color: disabled ? disabledColor : null,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: context.textTheme.bodyMedium?.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
                color: disabled ? disabledColor : color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

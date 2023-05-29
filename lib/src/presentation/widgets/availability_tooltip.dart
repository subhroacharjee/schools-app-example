import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class AvailabilityTooltip extends StatefulWidget {
  const AvailabilityTooltip({
    required this.child,
    this.isAvailable = false,
    super.key,
  });
  final Widget child;
  final bool isAvailable;
  @override
  State<AvailabilityTooltip> createState() => _AvailabilityTooltipState();
}

class _AvailabilityTooltipState extends State<AvailabilityTooltip> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return PortalTarget(
      visible: _isHovering && !widget.isAvailable,
      anchor: const Aligned(
        follower: Alignment.centerLeft,
        target: Alignment.centerRight,
      ),
      portalFollower: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SizedBox(
          width: 248,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              side: BorderSide(
                color: Color(0xFF606060),
              ),
            ),
            color: const Color(0xFF333333),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
              child: Row(children: [
                const Icon(
                  Icons.lock,
                  color: TColors.white,
                  size: 25,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Flexible(
                  child: TText(
                    'We are currently developing this feature, it will be available soon.',
                    style: TTextStyle.regularXS(
                      color: TColors.white,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
      child: MouseRegion(
        onExit: (_) => setState(() => _isHovering = false),
        onEnter: (_) => setState(() => _isHovering = true),
        child: widget.child,
      ),
    );
  }
}

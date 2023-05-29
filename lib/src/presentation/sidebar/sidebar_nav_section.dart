import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schools_app/src/presentation/blocs/sidebar_state.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_bloc.dart';
import 'package:schools_app/src/presentation/widgets/availability_tooltip.dart';

class SidebarNavSection extends StatefulWidget {
  const SidebarNavSection({Key? key}) : super(key: key);

  @override
  State<SidebarNavSection> createState() => _SidebarNavSectionState();
}

class _SidebarNavSectionState extends State<SidebarNavSection> {
  @override
  Widget build(BuildContext context) {
    final sidebarBloc = context.watch<SidebarBloc>();
    return Container(
      width: 300,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: TColors.black.withOpacity(0.06),
        ),
        color: TColors.white,
        boxShadow: [
          BoxShadow(
            color: TColors.black.withOpacity(0.04),
            blurRadius: 2,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: BlocBuilder<SidebarBloc, SidebarState>(
        bloc: sidebarBloc,
        builder: (context, state) {
          final items = state.items;
          return ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (_, index) => _SidebarNavItem(
              bloc: items[index],
            ),
          );
        },
      ),
    );
  }
}

class _SidebarNavItem extends StatelessWidget {
  const _SidebarNavItem({
    required this.bloc,
    Key? key,
  }) : super(key: key);

  final SidebarItemBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SidebarItemBloc, SidebarItemState>(
      bloc: bloc,
      builder: (context, itemState) {
        final isLocked = itemState.isLocked;
        final color = itemState.color;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: MaterialInkWell(
            onTap: isLocked
                ? null
                : () {
                    context.read<SidebarBloc>().select(context, bloc.id);
                  },
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: BlocBuilder<SidebarBloc, SidebarState>(
              builder: (context, state) {
                final isSelected = state.selectedFeatureId == bloc.id;
                late final Color textColor, iconColor, bgColor;
                final lockedColor = TColors.black.shade300;
                if (isLocked) {
                  textColor = iconColor = lockedColor;
                  bgColor = TColors.transparent;
                } else if (isSelected) {
                  textColor = iconColor = TColors.white;
                  bgColor = color;
                } else {
                  textColor = TColors.black;
                  iconColor = color;
                  bgColor = TColors.transparent;
                }

                return AvailabilityTooltip(
                  isAvailable: !isLocked,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 11),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: TextIconTile(
                      text: itemState.title,
                      leadingIcon: ColorFiltered(
                        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                        child: SvgPicture.asset(
                          itemState.iconPath,
                          width: 16.6,
                          color: color,
                        ),
                      ),
                      textStyle: context.textTheme.bodyMedium?.copyWith(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                      trailingIcon: isLocked
                          ? const Icon(
                              Icons.lock,
                              color: Colors.grey,
                              size: 15,
                            )
                          : empty,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

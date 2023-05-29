import 'package:components/components.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 9,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: progressBg,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                      color: progressGreen,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: progressYellow,
                            ),
                          ),
                        ),
                        const Expanded(child: empty),
                      ],
                    ),
                  ),
                ),
                const Expanded(child: empty),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '76%',
          style: context.textTheme.bodyMedium?.copyWith(
            color: TColors.black.withOpacity(0.48),
            fontSize: 15,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}

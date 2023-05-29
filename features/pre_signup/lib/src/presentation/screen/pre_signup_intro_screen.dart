import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pre_signup/src/presentation/bloc/year_level_bloc.dart';

class PreSignupIntroScreen extends StatefulWidget {
  const PreSignupIntroScreen({super.key});

  @override
  State<PreSignupIntroScreen> createState() => _PreSignupIntroScreenState();
}

class _PreSignupIntroScreenState extends State<PreSignupIntroScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<YearLevelBloc>(context).clearSkillId();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          const Expanded(flex: 2, child: empty),
          SizedBox(
            height: 164,
            width: 380,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'packages/pre_signup/assets/wave_emoji.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(height: 19),
                      const TText(
                        'Hello! Select a year level to begin.',
                        style: TTextStyle.headline5(),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'packages/pre_signup/assets/select_year_arrow.png',
                    height: 42,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(flex: 4, child: empty),
        ],
      ),
    );
  }
}

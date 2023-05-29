import 'package:accounts_library/presentation/widgets/sign_up_popup.dart';
import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pre_signup/src/presentation/bloc/year_level_bloc.dart';
import 'package:pre_signup/src/presentation/layout/year_level_header.dart';
import 'package:pre_signup/src/presentation/screen/pre_signup_intro_screen.dart';
import 'package:schools_app/schools_app.dart';
import 'package:skill_info/skill_info.dart';

class PreSignupLayout extends StatefulWidget {
  const PreSignupLayout({
    required this.child,
    required this.topicId,
    required this.subtopicId,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final String? topicId;
  final String? subtopicId;

  @override
  State<PreSignupLayout> createState() => _PreSignupLayoutState();
}

class _PreSignupLayoutState extends State<PreSignupLayout> {
  late final YearLevelBloc _yearLevelBloc;
  late SchoolsSkillInfoConfigurer skillConfigurer;

  @override
  void initState() {
    super.initState();
    _yearLevelBloc = YearLevelBloc(
      topic: widget.topicId,
      subtopic: widget.subtopicId,
    );

    skillConfigurer = (gi<SkillInfoConfigurer>() as SchoolsSkillInfoConfigurer)
      ..authenticationPromptListener.addListener(showAuthPopup);
  }

  void showAuthPopup() {
    if (skillConfigurer.authenticationPromptListener.value == null) return;
    // TODO(mayor04): Remove `accounts_library` dependency by putting this in a configurer
    showPopup(
      child: const SignUpPopup(),
      context: context,
    );
  }

  @override
  void didUpdateWidget(covariant PreSignupLayout oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.topicId != oldWidget.topicId || widget.subtopicId != oldWidget.subtopicId) {
      _yearLevelBloc.setActiveYears(widget.topicId, widget.subtopicId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _yearLevelBloc,
      child: BlocBuilder<YearLevelBloc, AsyncSnapshot<YearLevelState>>(builder: (context, snap) {
        final yearSelected =
            snap.whenData(data: (value) => value.selectedYear != null, orElse: () => false);
        return Column(
          children: [
            const YearLevelHeader(),
            Expanded(
              child: !yearSelected ? const PreSignupIntroScreen() : widget.child,
            ),
          ],
        );
      }),
    );
  }

  @override
  void dispose() {
    skillConfigurer.authenticationPromptListener.removeListener(showAuthPopup);

    super.dispose();
  }
}

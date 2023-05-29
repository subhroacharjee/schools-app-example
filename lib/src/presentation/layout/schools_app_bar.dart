import 'package:accounts_library/presentation/widgets/login_popup.dart';
import 'package:accounts_library/presentation/widgets/sign_up_popup.dart';
import 'package:components/components.dart';
import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:core_flutter/utils/extensions/subtopic_state_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learn/learn.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/presentation/layout/nodes/student_layout_node.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/widgets/avatar_menu.dart';

import 'bloc/schools_app_bar_bloc.dart';

class SchoolsAppBar extends StatefulWidget {
  const SchoolsAppBar({Key? key}) : super(key: key);

  @override
  State<SchoolsAppBar> createState() => _SchoolsAppBarState();
}

class _SchoolsAppBarState extends State<SchoolsAppBar> with ClassInfoCacheMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchoolsLayoutStateMachine, ILayoutNode>(
      builder: (context, node) {
        if (node is! SchoolsLayoutNode) {
          return empty;
        }

        late final List<Widget> items;
        if (node is TeacherLayoutNode) {
          items = [
            const AvatarMenu(),
          ];
        } else if (node is StudentLayoutNode) {
          items = [const AvatarMenu()];
        } else {
          items = [
            TButton(
              style: TButtonStyle.tertiary(),
              onPressed: () => showPopup(
                context: context,
                child: const LoginPopup(),
              ),
              child: const TText(
                'Log In',
                style: TTextStyle.boldS(),
              ),
            ),
            const SizedBox(width: 10),
            TButton(
              style: TButtonStyle.primary(),
              onPressed: () => showPopup(
                context: context,
                child: const SignUpPopup(),
              ),
              child: const TText(
                'Sign Up',
                style: TTextStyle.buttonS(),
              ),
            ),
          ];
        }

        return Stack(
          children: [
            BlocBuilder<SchoolsAppBarBloc, AsyncSnapshot<SchoolsAppBarState>>(
              builder: (context, state) {
                final data = state.data;
                if (state.hasError) {
                  return Container(
                    height: 60,
                    color: Colors.white,
                  );
                }

                if (data is TopicSchoolsAppBarState) {
                  return TopicAppBar(
                    showAvatarMenu: true,
                    progress: data.progress != null
                        ? Progress(
                            correct: data.progress!.correct,
                            wrong: data.progress!.wrong,
                            $__typename: '',
                          )
                        : null,
                    title: data.title,
                    onNavigateBack: (context, _) {
                      classInfoCache.setTopicId(null);
                      context.go(Routes.curriculum.blueprint);
                    },
                    emoji: data.emoji,
                    color: data.color,
                    hideProgress: data.progress == null,
                  );
                } else if (data is SubtopicSchoolsAppBarState) {
                  return SubtopicAppBar(
                    id: data.id,
                    color: data.state?.color,
                    correct: data.progress?.correct,
                    wrong: data.progress?.wrong,
                    subtopicState: data.state,
                    iconUrl: data.icon,
                    isLoading: data.isLoading,
                    topicId: data.topicId,
                    title: data.title,
                    onNavigateBack: (context, _) {
                      classInfoCache.setSubtopicId(null);
                      context.go('/curriculum/topic/${data.topicId}');
                    },
                    topBarColor: data.topicColor,
                  );
                }

                return const LearnAppBar(
                  showAvatarMenu: true,
                );
              },
            ),
            Positioned.fill(
              child: Row(
                children: [
                  const Spacer(),
                  ...items,
                  const SizedBox(width: 24),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

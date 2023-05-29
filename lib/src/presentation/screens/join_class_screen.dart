import 'package:accounts_library/presentation/widgets/sign_up_popup.dart';
import 'package:accounts_library/presentation/widgets/validation_error_text_widget.dart';
import 'package:components/components.dart';
import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core/presentation/mixins/loading_state_mixins.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/presentation/blocs/join_class_bloc.dart';
import 'package:schools_app/src/presentation/layout/nodes/student_layout_node.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state_machine.dart';
import 'package:schools_app/src/presentation/utils/logout.dart';

class JoinClassScreen extends StatefulWidget {
  const JoinClassScreen({this.code, super.key});

  final String? code;

  @override
  State<JoinClassScreen> createState() => _JoinClassScreenState();
}

class _JoinClassScreenState extends State<JoinClassScreen> with SingleLoadingStateMixin {
  late final _bloc = JoinClassBloc(widget.code);
  late final _controller = TextEditingController(text: widget.code);
  late final SchoolsLayoutStateMachine _sm;

  @override
  void initState() {
    super.initState();

    _bloc.checkJoinClassState();
    _sm = context.read<SchoolsLayoutStateMachine>();

    final code = widget.code;

    if (code != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!(_sm.handledClassCodes[code] ?? false)) {
          _sm.handledClassCodes[code] = true;
          _signUp();
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocListener<JoinClassBloc, JoinClassState>(
        listenWhen: (_, current) => current.joined,
        listener: (context, state) => context.go('/curriculum'),
        child: Scaffold(
          backgroundColor: TColors.white,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0x1300A2FF),
                      Color(0x0000A2FF),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'packages/schools_app/assets/full_logo.png',
                      height: 56,
                      filterQuality: FilterQuality.medium,
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: 385,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                      decoration: BoxDecoration(
                        color: TColors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            blurRadius: 2,
                            color: TColors.black.withOpacity(0.12),
                          ),
                        ],
                      ),
                      child: BlocBuilder<JoinClassBloc, JoinClassState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              const TText(
                                'Enter Class Code',
                                style: TTextStyle.headline4(),
                              ),
                              const SizedBox(height: 24),
                              TTextFormField(
                                controller: _controller,
                                onChanged: _bloc.onCodeChanged,
                                hintText: '123456',
                                title: 'Class Code',
                              ),
                              const SizedBox(height: 12),
                              if (state.invalidCode) ...[
                                const ValidationErrorTextWidget(errorText: 'Invalid class code'),
                                const SizedBox(
                                  height: 8,
                                ),
                              ],
                              const SizedBox(height: 12),
                              TButton(
                                onPressed: () async {
                                  final sm = context.read<SchoolsLayoutStateMachine>();
                                  if (sm.node is StudentLayoutNode) {
                                    isLoading = true;
                                    await _bloc.joinClass();
                                    isLoading = false;
                                  } else {
                                    _handleClassCode(_controller.text);
                                  }
                                },
                                loading: isLoading,
                                style: TButtonStyle.primary(),
                                child: const Center(
                                  child: TText(
                                    'Continue',
                                    style: TTextStyle.buttonM(),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 390,
                      child: TText(
                        "By continuing, you agree to Tutero's Terms of Service and Privacy Policy",
                        textAlign: TextAlign.center,
                        style: TTextStyle.regularXS(color: TColors.black.shade300),
                      ),
                    ),
                  ],
                ),
              ),
              if (_sm.node is StudentLayoutNode)
                Positioned(
                  right: 30,
                  top: 30,
                  child: TButton(
                    style: TButtonStyle.secondary(),
                    onPressed: () => logOut(context),
                    child: const TText(
                      'Log Out',
                      style: TTextStyle.boldS(),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleClassCode(String code) {
    final sm = context.read<SchoolsLayoutStateMachine>();
    sm.handledClassCodes[code] = true;
    _signUp();
  }

  Future<void> _signUp() async {
    isLoading = true;
    await showPopup(
      child: SignUpPopup(
        userType: UserType.student,
        barrierDismissible: widget.code == null,
      ),
      context: context,
    );
    _bloc.checkJoinClassState();
    isLoading = false;
  }
}

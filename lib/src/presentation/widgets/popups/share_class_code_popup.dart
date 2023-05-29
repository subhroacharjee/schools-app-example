import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schools_app/src/presentation/blocs/share_class_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class ShareClassPopup extends StatefulWidget {
  const ShareClassPopup({
    required this.code,
    Key? key,
  }) : super(key: key);

  final String code;

  @override
  State<ShareClassPopup> createState() => _ShareClassPopupState();
}

class _ShareClassPopupState extends State<ShareClassPopup> with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 2, vsync: this);

  @override
  void initState() {
    super.initState();

    tabController.addListener(notifyOnTabChange);
  }

  void notifyOnTabChange() {
    if (tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShareClassBloc, ShareClassState>(
      bloc: ShareClassBloc(),
      builder: (context, state) {
        return PopupLayout(
          padding: EdgeInsets.zero,
          closeButtonSize: 18,
          closeButtonContainerSize: 24,
          maxWidth: 580,
          builder: (_, __, data) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: TColors.white,
              ),
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Students',
                    style: const TTextStyle.headline5().copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 26),
                  TTabBar.cupertino(
                    controller: tabController,
                    tabs: [
                      const TTab(
                        text: 'Share Link',
                      ),
                      const TTab(
                        text: 'Class Code',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  tabController.index == 0
                      ? _ShareLinkSection(
                          classCodeBaseUrl: state.classCodeBaseUrl,
                          code: widget.code,
                        )
                      : _ClassCodeSection(
                          classCodeBaseUrl: state.classCodeBaseUrl,
                          code: widget.code,
                        ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}

class _ClassCodeSection extends StatefulWidget {
  const _ClassCodeSection({
    required this.code,
    required this.classCodeBaseUrl,
    Key? key,
  }) : super(key: key);

  final String code;
  final String classCodeBaseUrl;

  @override
  State<_ClassCodeSection> createState() => _ClassCodeSectionState();
}

class _ClassCodeSectionState extends State<_ClassCodeSection> {
  bool _linkCopied = false;

  @override
  Widget build(BuildContext context) {
    final classLink = 'https://${widget.classCodeBaseUrl}/${widget.code}';

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        border: Border.all(
          // TODO: No Tcolors neutral
          color: const Color(0xFFE5E5E5),
        ),
      ),
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 468,
            child: Text(
              'Your students can join the class by visiting the following '
              'link and then entering the code shown below.',
              textAlign: TextAlign.center,
              style: TTextStyle.mediumS(),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 24),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: TColors.primary.shade50,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.language,
                  color: TColors.primary.shade200,
                  size: 20,
                ),
                const SizedBox(width: 10),
                SelectableText(
                  widget.classCodeBaseUrl,
                  style: TTextStyle.boldL(
                    color: TColors.primary.shade500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: _linkCopied
                ? null
                : () => setState(() {
                      _linkCopied = true;
                      Clipboard.setData(
                        ClipboardData(
                          text: classLink,
                        ),
                      );
                      Future.delayed(
                        const Duration(seconds: 4),
                        () => setState(() {
                          _linkCopied = false;
                        }),
                      );
                    }),
            child: SizedBox(
              width: 150,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 100),
                child: Row(
                  key: ValueKey(_linkCopied),
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _linkCopied
                        ? const Icon(
                            Icons.check,
                            color: TColors.success,
                            size: 15,
                          )
                        : SvgPicture.asset(
                            'packages/schools_app/assets/copy.svg',
                            width: 14,
                          ),
                    const SizedBox(width: 9),
                    Text(
                      _linkCopied ? 'Copied' : 'Copy Link',
                      style: TTextStyle.boldS(
                        color: _linkCopied ? TColors.success : TColors.primary.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(21),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: TColors.rose.shade50,
            ),
            child: SelectableText(
              widget.code.toUpperCase(),
              style: context.textTheme.bodyMedium?.copyWith(
                color: TColors.rose.shade600,
                fontWeight: bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ShareLinkSection extends StatefulWidget {
  const _ShareLinkSection({
    required this.code,
    required this.classCodeBaseUrl,
    Key? key,
  }) : super(key: key);

  final String code;
  final String classCodeBaseUrl;

  @override
  State<_ShareLinkSection> createState() => _ShareLinkSectionState();
}

class _ShareLinkSectionState extends State<_ShareLinkSection> {
  bool _linkCopied = false;

  @override
  Widget build(BuildContext context) {
    final classLink = 'https://${widget.classCodeBaseUrl}/${widget.code}';
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        border: Border.all(
          // TODO: No Tcolors neutral
          color: const Color(0xFFE5E5E5),
        ),
      ),
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 24),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: TColors.primary.shade50,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.language,
                  color: TColors.primary.shade200,
                  size: 20,
                ),
                const SizedBox(width: 10),
                SelectableText(
                  '${widget.classCodeBaseUrl}/${widget.code.toUpperCase()}',
                  style: TTextStyle.boldL(
                    color: TColors.primary.shade500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: _linkCopied
                    ? null
                    : () => setState(() {
                          _linkCopied = true;
                          Clipboard.setData(
                            ClipboardData(
                              text: classLink,
                            ),
                          );
                          Future.delayed(
                            const Duration(seconds: 4),
                            () => setState(() {
                              _linkCopied = false;
                            }),
                          );
                        }),
                child: SizedBox(
                  width: 150,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 100),
                    child: Row(
                      key: ValueKey(_linkCopied),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _linkCopied
                            ? const Icon(
                                Icons.check,
                                color: TColors.success,
                                size: 15,
                              )
                            : SvgPicture.asset(
                                'packages/schools_app/assets/copy.svg',
                                width: 14,
                              ),
                        const SizedBox(width: 9),
                        Text(
                          _linkCopied ? 'Link Copied' : 'Copy Invite Link',
                          style: TTextStyle.boldS(
                            color: _linkCopied ? TColors.success : TColors.primary.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 62),
              SizedBox(
                height: 22,
                child: VerticalDivider(
                  color: TColors.black.shade100,
                  width: 1,
                ),
              ),
              const SizedBox(width: 62),
              InkWell(
                onTap: () => launchEmail(classLink),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'packages/schools_app/assets/mail_icon.svg',
                      width: 14,
                    ),
                    const SizedBox(width: 9),
                    Text(
                      'Email Students',
                      style: TTextStyle.boldS(
                        color: TColors.primary.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  void launchEmail(String classLink) {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: '',
      query: encodeQueryParameters({
        'subject': 'Join Tutero',
        'body': 'Click the link below to join your Tutero class. \n\n$classLink',
      }),
    );

    launchUrl(emailLaunchUri);
  }

  String? encodeQueryParameters(Map<String, String> params) => params.entries
      .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

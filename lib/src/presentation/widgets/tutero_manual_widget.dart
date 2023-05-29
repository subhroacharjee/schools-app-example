import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../mixins/youtube_controller_mixin.dart';

class TuteroManualWidget extends StatefulWidget {
  const TuteroManualWidget({super.key});

  static const videoId = 'dQw4w9WgXcQ';

  @override
  State<TuteroManualWidget> createState() => _TuteroManualWidgetState();
}

class _TuteroManualWidgetState extends State<TuteroManualWidget> with YoutubeControllerMixin {
  @override
  bool get isInteractable => false;

  @override
  String get videoId => TuteroManualWidget.videoId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopup(
        context: context,
        child: _TuteroVideoPopup(),
      ),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: TColors.black.withOpacity(0.06),
          ),
          gradient: RadialGradient(
            center: Alignment.topLeft,
            colors: [
              const Color(0xFFF7A001).withOpacity(0.12),
              const Color(0xFFF7A001).withOpacity(0),
            ],
            radius: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: TColors.black.withOpacity(0.04),
              blurRadius: 2,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'packages/schools_app/assets/help.svg',
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text('How to use Tutero?'),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: 240,
              height: 135,
              child: YoutubePlayer(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TuteroVideoPopup extends StatefulWidget {
  @override
  State<_TuteroVideoPopup> createState() => _TuteroVideoPopupState();
}

class _TuteroVideoPopupState extends State<_TuteroVideoPopup> with YoutubeControllerMixin {
  @override
  bool get isInteractable => true;

  @override
  String get videoId => TuteroManualWidget.videoId;

  @override
  Widget build(BuildContext context) {
    return PopupLayout(
      maxWidth: 866,
      builder: (_, __, ___) {
        return Container(
          color: TColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TText(
                'How to use Tutero?',
                style: TTextStyle.headline5(),
              ),
              const SizedBox(height: 44),
              YoutubePlayer(
                aspectRatio: 826 / 492,
                controller: controller,
              ),
            ],
          ),
        );
      },
    );
  }
}

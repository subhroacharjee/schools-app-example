import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

mixin YoutubeControllerMixin<T extends StatefulWidget> on State<T> {
  YoutubePlayerController get controller => YoutubePlayerController.fromVideoId(
        videoId: videoId,
        params: YoutubePlayerParams(
          pointerEvents: isInteractable ? PointerEvents.auto : PointerEvents.none,
          playsInline: false,
          showControls: isInteractable,
        ),
      );

  bool get isInteractable;

  String get videoId;

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}

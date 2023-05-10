import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class StoryVideo extends StatefulWidget {
  final String videoUrl;
  final VideoPlayerController? controller;

  const StoryVideo({
    Key? key,
    required this.videoUrl,
    this.controller,
  }) : super(key: key);

  factory StoryVideo.url(String url, VideoPlayerController? controller) {
    return StoryVideo(videoUrl: url, controller: controller);
  }

  @override
  State<StoryVideo> createState() => _StoryVideoState();
}

class _StoryVideoState extends State<StoryVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          if (widget.controller != null &&
              widget.controller!.value.isInitialized)
            Center(
              child: AspectRatio(
                aspectRatio: widget.controller!.value.aspectRatio,
                child: VideoPlayer(widget.controller!),
              ),
            ),
        ],
      ),
    );
  }
}

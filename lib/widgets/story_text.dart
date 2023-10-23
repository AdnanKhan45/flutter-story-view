import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class StoryText extends StatefulWidget {
  final String text;
  final VideoPlayerController? controller;

  const StoryText({
    Key? key,
    required this.text,
    this.controller,
  }) : super(key: key);

  factory StoryText.url(String text) {
    return StoryText(text: text);
  }

  @override
  State<StoryText> createState() => _StoryTextState();
}

class _StoryTextState extends State<StoryText> {
  @override
  Widget build(BuildContext context) {
    if (widget.controller != null && widget.controller!.value.isInitialized) {
      return Center(
        child: Text(
          widget.text,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}

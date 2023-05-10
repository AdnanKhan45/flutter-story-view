import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class StoryImage extends StatefulWidget {
  final String imageUrl;
  final bool? isAsset;
  const StoryImage({
    Key? key,
    required this.imageUrl,
    this.isAsset = false,
  }) : super(key: key);

  factory StoryImage.url(String url, {bool? isAsset = false}) {
    return StoryImage(imageUrl: url, isAsset: isAsset);
  }

  @override
  State<StoryImage> createState() => _StoryImageState();
}

class _StoryImageState extends State<StoryImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: widget.isAsset == true
            ? Image.asset(
                widget.imageUrl,
                fit: BoxFit.cover,
              )
            : CachedNetworkImage(
                imageUrl: "${widget.imageUrl}",
                fit: BoxFit.cover,
              ));
  }
}

import 'package:flutter/material.dart';

/// A widget that displays a row of progress indicators to represent the progress of a list of [StoryItem].
class StoryIndicator extends StatefulWidget {
  /// The total number of story items to display.
  final int storyItemsLen;

  /// The index of the currently displayed story item.
  final int currentItemIndex;

  /// The progress of the currently displayed story item, from 0.0 to 1.0.
  final double? progress;

  /// Height of the indicator
  final double? indicatorHeight;

  // Background color of indicator
  final Color? indicatorColor;

  // Background color of indicator
  final Color? indicatorValueColor;

  // Padding of indicator
  final EdgeInsets? indicatorPadding;

  StoryIndicator({
    Key? key,
    required this.storyItemsLen,
    required this.currentItemIndex,
    this.progress,
    this.indicatorHeight,
    this.indicatorColor,
    this.indicatorValueColor,
    this.indicatorPadding = const EdgeInsets.only(top: 40.0),
  }) : super(key: key);

  @override
  State<StoryIndicator> createState() => _StoryIndicatorState();
}

class _StoryIndicatorState extends State<StoryIndicator> {
  @override
  Widget build(BuildContext context) {
    return _buildProgressIndicators();
  }

  /// Builds a list of progress indicators based on the story items data.
  Widget _buildProgressIndicators() {
    List<Widget> indicators = [];

    /// Loop through the items length in the storyItems List.
    for (int i = 0; i < widget.storyItemsLen; i++) {
      double indicatorValue = 0.0;

      /// The indicator is fully shown for story items that have already been viewed.
      if (i < widget.currentItemIndex) {
        indicatorValue = 1.0;

        /// The indicator is partially shown for the currently viewed story item.
      } else if (i == widget.currentItemIndex) {
        indicatorValue = widget.progress!;
      }

      /// Add an expanded progress indicator to the list.
      indicators.add(
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child: LinearProgressIndicator(
                minHeight: widget.indicatorHeight ?? 2,
                value: indicatorValue,
                backgroundColor: widget.indicatorColor ?? Colors.grey[500],
                valueColor: AlwaysStoppedAnimation<Color>(
                    widget.indicatorValueColor ?? Colors.white),
              ),
            ),
          ),
        ),
      );
    }

    /// Display the progress indicators in a row.
    return Padding(
      padding: widget.indicatorPadding!,
      child: Row(
        children: indicators,
      ),
    );
  }
}

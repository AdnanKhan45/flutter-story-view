enum StoryItemType {
  //text,
  image,
  video,
}

extension StoryItemTypeExtension on StoryItemType {
  String get name => toString().split('.').last;

  static StoryItemType fromString(String name) {
    return StoryItemType.values.firstWhere((e) => e.name == name);
  }
}

/// Represents a story with a URL, viewers and type.
class StoryItem {
  /// The URL of the story.
  final String url;

  /// The viewers of the story.
  final List<dynamic>? viewers;

  /// The type of the story.
  final StoryItemType type;

  // Add a duration property for each StoryItem
  final int? duration;

  /// Constructs a new [StoryItem] instance with the given [url], [viewers], [type] and [duration].
  const StoryItem(
      {required this.url, this.viewers, required this.type, this.duration = 3});

  /// Converts this [StoryItem] instance to a JSON format.
  Map<String, dynamic> toJson() =>
      {"url": url, "viewers": viewers, "type": type.name, "duration": duration};

  /// Converts this [StoryItem] instance to a list of [StoryItem].
  List<StoryItem> toList() => List<StoryItem>.of([this]);
}

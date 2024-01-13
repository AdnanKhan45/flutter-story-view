# flutter_story_view [![Pub](https://img.shields.io/pub/v/flutter_story_view.svg)](https://pub.dev/packages/flutter_story_view)

WhatsApp story view package, for apps with stories like **Whatsapp** and **Instagram**.

<p float="left">

  <img src="https://i.imgur.com/jVB1Akw.jpg" width=400 />
  <img src="https://i.imgur.com/i66REow.png" width=400 />
  <img src="https://i.imgur.com/pOBYsFn.png" width=400 />
    
</p>

This a Flutter widget to display stories like **Whatsapp** and **Instagram**. This can also be used
inside ListView or Column. This package provide gestures like to pause, forward and go to previous story
page.


## Features

🌄  Image, and video support _(assets and url)_ both.

📍  Gesture for pause, forward and reverse page.

🌈  Animated progress indicator for each story item

🏵️  Caption for story.


## Installation

To use this plugin, add `flutter_story_view` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Usage

Import the package into your code

```dart
import "package:flutter_story_view/flutter_story_view.dart";
```

Look inside `examples/example.dart` on how to use this library. You can copy
and paste the code into your `main.dart` and run to have a quick look.

## Basics

Use [`FlutterStoryView`](https://pub.dev/documentation/flutter_story_view/latest/flutter_story_view/FlutterStoryView-class.html) to add stories in your Flutter App. `FlutterStoryView` class requires [`List<StoryItem>`](https://pub.dev/documentation/flutter_story_view/latest/flutter_story_view/List<StoryItem>-class.html) and each story item has some fields like `url`, `duration`, and `type` and so on.
So having these, you can handily customize each single story the way you want.

* **Keep in mind** : The `type` must be specified with each `StoryItem`. You can access the `type` String from the class `StoryItemType` which comes built-in with this package.

* **StoryItem Image** :

```dart
final itemImage = StoryItem(
    url: "your image url/asset goes here",
    type: StoryItemType.image,
    viewers: [],
    duration: 3 // for image if duration was null it will be 3 by default.
);
```

* **StoryItem Video** :

```dart
final itemImage = StoryItem(
    url: "your video url/asset goes here",
    type: StoryItemType.video,
    viewers: [],
    duration: 10 // for video the duration would be 30 seconds if video duration gets longer than 30 seconds.
);
```

For more information : visit example project inside `example/example.dart`.

## Additional information

This package will be improved more along the time, if you found any issue create
the issue, also if you want to contribute feel free to do. I'll review your code and
merge it if found useful. Thanks

## Contributors

[@berkaycatak](https://github.com/berkaycatak)


### Created & Maintained By

[@MuhammadAdnan](https://github.com/AdnanKhan45), Youtube : [@eTechViral](https://www.youtube.com/c/eTechViral), LinkedIn  : [@MuhammadAdnan](https://www.linkedin.com/in/muhammad-adnan-23bb8821b/) , Instagram  : [@MuhammadAdnan](https://www.instagram.com/dev.adnankhan/), LinkedIn : [@eTechViral](https://www.linkedin.com/company/etechviral/), Instagram : [@eTechViral](https://www.instagram.com/etechviral/)


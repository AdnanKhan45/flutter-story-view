import 'package:flutter/material.dart';
import 'package:flutter_story_view/flutter_story_view.dart';
import 'package:flutter_story_view/models/story_item.dart';
import 'package:flutter_story_view/models/user_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp Story View',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: WhatsAppStoryViewExample());
  }
}

class WhatsAppStoryViewExample extends StatefulWidget {
  const WhatsAppStoryViewExample({Key? key}) : super(key: key);

  @override
  State<WhatsAppStoryViewExample> createState() =>
      _WhatsAppStoryViewExampleState();
}

class _WhatsAppStoryViewExampleState extends State<WhatsAppStoryViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 500,
            child: FlutterStoryView(
                storyItems: [
                  // StoryItem (image) loaded from url
                  StoryItem(
                      url:
                          "https://plus.unsplash.com/premium_photo-1669741908308-5ca216f3fcd1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80",
                      type: StoryItemType.image,
                      viewers: [],
                      duration: 3),
                  // StoryItem (image) loaded from url
                  StoryItem(
                      url:
                          "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                      type: StoryItemType.image,
                      viewers: [],
                      duration: 5),
                  // StoryItem (image) loaded from assets
                  StoryItem(
                      url: "assets/whats_app_logo.png",
                      type: StoryItemType.image,
                      viewers: [],
                      duration: 5),
                  // StoryItem (video) loaded from assets
                  StoryItem(
                      url: "assets/video1.mp4",
                      type: StoryItemType.video,
                      viewers: [],
                      duration: 5),
                  // StoryItem (video) loaded from url
                  StoryItem(
                      url:
                          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                      type: StoryItemType.video,
                      viewers: [],
                      duration: 10),
                ],
                onComplete: () {
                  print("Completed");
                }, // called when stories completed
                onPageChanged: (index) {
                  print("currentPageIndex = $index");
                }, // returns current page index
                caption:
                    "This is very beautiful STORY", // optional caption will be show up on first story item.
                createdAt: DateTime
                    .now(), // if not specified current date would be taken
                enableOnHoldHide: false, // By default true
                indicatorColor:
                    Colors.grey[500], // You can modify it whichever you like :)
                indicatorHeight: 2, // You can modify it whichever you like :)
                indicatorValueColor:
                    Colors.white, // You can modify it whichever you like :)
                userInfo: UserInfo(
                    username: "Username", // give your username
                    profileUrl:
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80" // give your profile url
                    ) // if not specified default username and profile would be taken
                ),
          ),
        ],
      ),
    );
  }
}

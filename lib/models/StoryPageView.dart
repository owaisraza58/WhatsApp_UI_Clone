import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(title: 'Just beat joker ', backgroundColor: Colors.red),
      StoryItem.pageImage(
          url:
              "https://halfguarded.com/wp-content/uploads/2015/08/the-dark-knight-2.jpg",
          controller: _storyController),
      StoryItem.pageImage(
          url:
              "https://steamuserimages-a.akamaihd.net/ugc/843711997031637477/25850BD8113549C3932184ABB672326FCAC439FE/",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}

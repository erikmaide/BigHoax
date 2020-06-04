import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyText: 'If You take the blue pill...the story ends, '
            'you wake up in your bed and believe whatever you want to believe. '
            'You take the red pill...you stay in Wonderland, '
            'and I show you how deep the rabbit hole goes.',
        redChoice: 'I\'ll take the red pill!',
        blueChoice: 'Give me the blue pill.'),
  ];
  String getStory() {
    return _storyData[0].storyText;
  }

  String getRedPill() {
    return _storyData[0].redChoice;
  }

  String getBluePill() {
    return _storyData[0].blueChoice;
  }
}

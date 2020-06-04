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
    Story(
        storyText: 'You wake up in your bed',
        redChoice: 'Get dressed & go to work',
        blueChoice: 'Go back to sleep'),
    Story(
        storyText: 'Welcome to Wonderland',
        redChoice: 'I want to know more',
        blueChoice: 'Are we there yet'),
    Story(
        storyText: 'You are still sleeping',
        redChoice: 'I will settle this thing out',
        blueChoice: 'Never settle'),
    Story(
        storyText: 'I can still give you once chance',
        redChoice: 'Yes',
        blueChoice: 'No'),
    Story(storyText: 'That\'s about it', redChoice: 'Restart', blueChoice: ''),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyText;
  }

  String getRedPill() {
    return _storyData[_storyNumber].redChoice;
  }

  String getBluePill() {
    return _storyData[_storyNumber].blueChoice;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 3) {
      _storyNumber = 4;
    } else if (choiceNumber == 2 && _storyNumber == 3) {
    } else if (choiceNumber == 1 && _storyNumber == 4) {
      _storyNumber = 0;
    } else if (choiceNumber == 2 && _storyNumber == 4) {
      _storyNumber = 5;
    } else if (_storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 5) {
      return false;
    } else {
      return true;
    }
  }
}

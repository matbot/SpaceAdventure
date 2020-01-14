import 'dart:io';

class SpaceAdventure {
  SpaceAdventure();

  void start() {
    printGreeting();
    printIntroduction(responsePrompt("What's your name?"));
    print("Let's go on an adventure!");
    travel(getRandomYN());
  }

  void printGreeting() {
    print("Welcome to the Solar System!");
    print("There are 8 planets to explore");
  }

  void printIntroduction(String name) {
    print(
        "Nice to meet you, $name. My name is Eliza. I'm an old friend of Alexa.");
  }

  String responsePrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  void travelRandom() {
    travelTo("Random");
  }

  void travelSelected() {
    travelTo(responsePrompt("What planet do you want to travel to?"));
  }

  void travelTo(String planetName) {
    print("Traveling to $planetName...\n"
        "Arrived at $planetName. A very cold planet, furthest from the sun.");
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelRandom();
    } else {
      travelSelected();
    }
  }

  bool getRandomYN() {
    var answer = responsePrompt(
        "Shall I randomly choose a planet for you to visit? (Y or N)");
    while (answer != 'Y' && answer != 'N') {
      print("Sorry, I didn't get that.");
      answer = stdin.readLineSync();
    }
    if (answer == 'Y') {
      return true;
    } else {
      return false;
    }
  }
}

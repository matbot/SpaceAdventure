import 'dart:io';

import 'package:SpaceAdventure/SpaceAdventure.dart' as SpaceAdventure;

void main(List<String> arguments) {
  print("Welcome to the Solar System!");
  print("There are 8 planets to explore");

  print("What's your name?");

  final name = stdin.readLineSync();
  // const foo = 42; // just an example of a compile time constant in dart.

  print(
      "Nice to meet you, $name. My name is Eliza. I'm an old friend of Alexa.");

  print("Let's go on an adventure!\n"
      "Shall I randomly choose a planet for you to visit? (Y or N)");

  String answer;
  while (answer != 'Y' && answer != 'N') {
    answer = stdin.readLineSync();
    print("Sorry, I didn't get that.");
  }

  String planet;
  if (answer == 'Y') {
    planet = "Neptune";
  } else if (answer == 'N') {
    print("Name the planet you would like to visit.");
    planet = stdin.readLineSync();
  }

  print("Traveling to $planet...\n"
      "Arrived at $planet. A very cold planet, furthest from the sun.");
}

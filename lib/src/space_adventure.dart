/* Author: Mathew McDade
   Date: 1/14/20
*/

import 'dart:io';
import 'planet.dart';
import 'planetary_system.dart';

class SpaceAdventure {
  // ATTRIBUTES
  final PlanetarySystem planetarySystem;

  // CONSTRUCTOR
  SpaceAdventure({this.planetarySystem});

  // METHODS
  String responsePrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  void start() {
    printGreeting();
    printIntroduction(responsePrompt("What's your name?"));
    print("Let's go on an adventure!");
    if (planetarySystem.hasPlanets) {
      travel(getRandomYN());
    } else {
      print("No planets to explore.");
    }
  }

  void printIntroduction(String name) {
    print(
        "Nice to meet you, $name. My name is Eliza. I'm an old friend of Alexa.");
  }

  void printGreeting() {
    print("Welcome to the ${planetarySystem.name}!");
    print("There are ${planetarySystem.numberOfPlanets} planets to explore");
  }

  void travelRandom() {
    if (!planetarySystem.hasPlanets) return;
    travelTo(planetarySystem.randomPlanet);
  }

  void travelSelected() {
    print("Planets in this system:");
    planetarySystem.planets.forEach((planet) => print(planet.name));

    String selectedPlanetName;
    int selectedPlanetIndex;
    Planet selectedPlanet;
    do {
      selectedPlanetName =
          responsePrompt("Which planet do you want to travel to?");
      selectedPlanet = planetarySystem.planets.firstWhere(
          (planet) => planet.name == selectedPlanetName,
          orElse: () => null);
      if (selectedPlanet == null) {
        print("I can't find that planet!\n");
      }
    } while (selectedPlanet == null);

    //travelTo(planetarySystem.planets[selectedPlanetIndex]);
    travelTo(selectedPlanet);
  }

  void travelTo(Planet planet) {
    print("Traveling to ${planet.name}...\n"
        "Arrived at ${planet.name}. ${planet.description}");
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

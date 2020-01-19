/* Author: Mathew McDade
   Date: 1/14/20
*/

import 'dart:convert';

import 'planet.dart';

class PlanetarySystem {
  final String name;
  final List<dynamic> planets;
  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;
  // Note the use of the .. cascade operator to pass the shuffled list to .first.
  Planet get randomPlanet => (planets..shuffle()).first;

  // Optional initializing formal constructor.
  PlanetarySystem({this.name = "Unknown Space", this.planets = const []});

  // Concise initialization of member variables from JSON.
  PlanetarySystem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        planets = json['planets'].map((i) => Planet.fromJson(i)).toList();

  Map<String, dynamic> toJson() => {
        'name': this.name,
        'planets': this.planets,
      };
}

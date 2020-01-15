/* Author: Mathew McDade
   Date: 1/14/20
*/

import 'dart:convert';

import 'planet.dart';

class PlanetarySystem {
  final String name;
  final List<dynamic> planets;

  // Optional initializing formal constructor.
  PlanetarySystem(this.name, this.planets);

  // Concise initialization of member variables from JSON.
  PlanetarySystem.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        planets = json['planets'].map((i) => Planet.fromJson(i)).toList();

  Map<String, dynamic> toJson() => {
        'name': this.name,
        'planets': this.planets,
      };
}

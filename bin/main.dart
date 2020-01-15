/* Author: Mathew McDade
   Date: 1/14/20
*/

import 'dart:io';
import 'dart:convert';

import 'package:SpaceAdventure/space_adventure.dart';

void main(List<String> arguments) {
  Map<String, dynamic> systemMap;
  // Concise file consumption, inline class object instantiation, and member function call.
  // Kind of hard to read, but pretty neat.
  File(arguments[0]).readAsString().then((String contents) {
    SpaceAdventure(
            planetarySystem: PlanetarySystem.fromJson(jsonDecode(contents)))
        .start();
  });
}

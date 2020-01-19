/* Author: Mathew McDade
   Date: 1/14/20
*/

import 'dart:io';
import 'dart:convert';

import 'package:SpaceAdventure/space_adventure.dart';

void main(List<String> arguments) {
  // Concise file consumption, inline class object instantiation, and member function call.
  // Kind of hard to read, but pretty neat as an example of a powerful one liner in dart.
  // 1. Open the file named by the first argument.
  // 2. Read the contents of that file as a string.
  // 3. Then, pass the string contents to an anonymous function,
  // 4. which initializes an SpaceAdventure class object using the contents,
  // 5. which initializes a PlanetarySystem object,
  // 6. which initializes the Planet objects.
  // 7. Finally, the SpaceAdventure objects start() method is called.
  File(arguments[0]).readAsString().then((String contents) => SpaceAdventure(
          planetarySystem: PlanetarySystem.fromJson(jsonDecode(contents)))
      .start());
}

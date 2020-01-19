/* Author: Mathew McDade
   Date: 1/14/20
*/

import 'dart:convert';

class Planet {
  final String name;
  final String description;

  Planet({this.name,
      this.description = "I don't know anything about this planet."});

  Planet.fromJson(Map<String, dynamic> json)
      : this.name = json['name'],
        this.description = json['description'];

  Map<String, dynamic> toJson() => {
        'name': this.name,
        'description': this.description,
      };
}

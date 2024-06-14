// To parse this JSON data, do
//
//     final resep = resepFromJson(jsonString);

import 'dart:convert';

Resep resepFromJson(String str) => Resep.fromJson(json.decode(str));

String resepToJson(Resep data) => json.encode(data.toJson());

class Resep {
  String recipeName;
  String ingredients;
  String instructions;
  String category;
  bool favorite;

  Resep({
    required this.recipeName,
    required this.ingredients,
    required this.instructions,
    required this.category,
    required this.favorite,
  });

  factory Resep.fromJson(Map<String, dynamic> json) => Resep(
        recipeName: json["recipeName"],
        ingredients: json["ingredients"],
        instructions: json["instructions"],
        category: json["category"],
        favorite: json["favorite"],
      );

  Map<String, dynamic> toJson() => {
        "recipeName": recipeName,
        "ingredients": ingredients,
        "instructions": instructions,
        "category": category,
        "favorite": favorite,
      };
}

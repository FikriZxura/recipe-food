// To parse this JSON data, do
//
//     final register = registerFromJson(jsonString);

import 'dart:convert';

Register registerFromJson(String str) => Register.fromJson(json.decode(str));

String registerToJson(Register data) => json.encode(data.toJson());

class Register {
  String username;
  String name;
  int password;
  int numberphone;

  Register({
    required this.username,
    required this.name,
    required this.password,
    required this.numberphone,
  });

  factory Register.fromJson(Map<String, dynamic> json) => Register(
        username: json["username"],
        name: json["name"],
        password: json["password"],
        numberphone: json["numberphone"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "name": name,
        "password": password,
        "numberphone": numberphone,
      };
}

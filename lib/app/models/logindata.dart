// To parse this JSON data, do
//
//     final logindata = logindataFromJson(jsonString);

import 'dart:convert';

Logindata logindataFromJson(String str) => Logindata.fromJson(json.decode(str));

String logindataToJson(Logindata data) => json.encode(data.toJson());

class Logindata {
  String username;
  int password;

  Logindata({
    required this.username,
    required this.password,
  });

  factory Logindata.fromJson(Map<String, dynamic> json) => Logindata(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}

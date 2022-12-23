// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.enabled,
    this.name,
    this.surname,
    this.nickName,
    this.phoneNumber,
    this.email,
    this.password,
  });

  int? id;
  bool? enabled;
  String? name;
  String? surname;
  String? nickName;
  String? phoneNumber;
  String? email;
  String? password;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    enabled: json["enabled"],
    name: json["name"],
    surname: json["surname"],
    nickName: json["nickName"],
    phoneNumber: json["phoneNumber"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "enabled": enabled,
    "name": name,
    "surname": surname,
    "nickName": nickName,
    "phoneNumber": phoneNumber,
    "email": email,
    "password": password,
  };
}

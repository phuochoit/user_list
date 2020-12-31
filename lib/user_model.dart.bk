// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

class UserModel {
  UserModel({
    this.type,
    this.format,
    this.version,
    this.data,
  });

  final String type;
  final String format;
  final String version;
  final Map<String, dynamic> data;

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        type: json["type"],
        format: json["format"],
        version: json["version"],
        data: Map.from(
          json['data'],
        ),
      );
}

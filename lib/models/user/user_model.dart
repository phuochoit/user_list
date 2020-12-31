import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
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
  final Map<String, ListUser> data;
  // final List<dynamic> data;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class ListUser {
  final Map<String, DataUser> dataUser;

  ListUser(this.dataUser);

  factory ListUser.fromJson(Map<String, dynamic> json) =>
      _$ListUserFromJson(json);

  Map<String, dynamic> toJson() => _$ListUserToJson(this);
}

@JsonSerializable()
class DataUser {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  DataUser(
      this.id, this.name, this.username, this.email, this.phone, this.website);

  factory DataUser.fromJson(Map<String, dynamic> json) =>
      _$DataUserFromJson(json);

  Map<String, dynamic> toJson() => _$DataUserToJson(this);
}

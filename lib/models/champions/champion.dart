import 'package:json_annotation/json_annotation.dart';
part 'champion.g.dart';

@JsonSerializable()
class Champion {
  final Data data;

  Champion(this.data);

  factory Champion.fromJson(Map<String, dynamic> json) =>
      _$ChampionFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionToJson(this);
}

@JsonSerializable()
class Data {
  Data({
    this.id,
    this.key,
    this.name,
    this.title,
    this.blurb,
    this.image,
    this.tags,
    this.partype,
  });

  final String id;
  final String key;
  final String name;
  final String title;
  final String blurb;
  final Image image;
  final List<String> tags;
  final String partype;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Image {
  Image({
    this.full,
    this.sprite,
    this.group,
  });

  final String full;
  final String sprite;
  final String group;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

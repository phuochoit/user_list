// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Champion _$ChampionFromJson(Map<String, dynamic> json) {
  return Champion(
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChampionToJson(Champion instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    id: json['id'] as String,
    key: json['key'] as String,
    name: json['name'] as String,
    title: json['title'] as String,
    blurb: json['blurb'] as String,
    image: json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    partype: json['partype'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'title': instance.title,
      'blurb': instance.blurb,
      'image': instance.image,
      'tags': instance.tags,
      'partype': instance.partype,
    };

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image(
    full: json['full'] as String,
    sprite: json['sprite'] as String,
    group: json['group'] as String,
  );
}

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'full': instance.full,
      'sprite': instance.sprite,
      'group': instance.group,
    };

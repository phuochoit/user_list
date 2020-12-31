// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    type: json['type'] as String,
    format: json['format'] as String,
    version: json['version'] as String,
    data: (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : ListUser.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'type': instance.type,
      'format': instance.format,
      'version': instance.version,
      'data': instance.data,
    };

ListUser _$ListUserFromJson(Map<String, dynamic> json) {
  return ListUser(
    (json['dataUser'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : DataUser.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$ListUserToJson(ListUser instance) => <String, dynamic>{
      'dataUser': instance.dataUser,
    };

DataUser _$DataUserFromJson(Map<String, dynamic> json) {
  return DataUser(
    json['id'] as int,
    json['name'] as String,
    json['username'] as String,
    json['email'] as String,
    json['phone'] as String,
    json['website'] as String,
  );
}

Map<String, dynamic> _$DataUserToJson(DataUser instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
    };

// **************************************************************************
// JsonLiteralGenerator
// **************************************************************************

final _$UserModelJsonLiteral = {
  'type': 'user',
  'format': 'json',
  'version': '1.0',
  'data': {
    'Sincere@april.biz': {
      'id': 1,
      'name': 'Leanne Graham',
      'username': 'Bret',
      'email': 'Sincere@april.biz',
      'address': {
        'street': 'Kulas Light',
        'suite': 'Apt. 556',
        'city': 'Gwenborough',
        'zipcode': '92998-3874',
        'geo': {'lat': '-37.3159', 'lng': '81.1496'}
      },
      'phone': '1-770-736-8031 x56442',
      'website': 'hildegard.org',
      'company': {
        'name': 'Romaguera-Crona',
        'catchPhrase': 'Multi-layered client-server neural-net',
        'bs': 'harness real-time e-markets'
      }
    },
    'Shanna@melissa.tv': {
      'id': 2,
      'name': 'Ervin Howell',
      'username': 'Antonette',
      'email': 'Shanna@melissa.tv',
      'address': {
        'street': 'Victor Plains',
        'suite': 'Suite 879',
        'city': 'Wisokyburgh',
        'zipcode': '90566-7771',
        'geo': {'lat': '-43.9509', 'lng': '-34.4618'}
      },
      'phone': '010-692-6593 x09125',
      'website': 'anastasia.net',
      'company': {
        'name': 'Deckow-Crist',
        'catchPhrase': 'Proactive didactic contingency',
        'bs': 'synergize scalable supply-chains'
      }
    }
  }
};

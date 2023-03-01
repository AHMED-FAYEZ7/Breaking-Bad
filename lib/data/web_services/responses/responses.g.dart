// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoResponse _$InfoResponseFromJson(Map<String, dynamic> json) => InfoResponse(
      json['count'] as int?,
      json['pages'] as int?,
      json['next'] as String?,
      json['prev'] as String?,
    );

Map<String, dynamic> _$InfoResponseToJson(InfoResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      json['info'] == null
          ? null
          : InfoResponse.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
    };

OriginResponse _$OriginResponseFromJson(Map<String, dynamic> json) =>
    OriginResponse(
      json['name'] as String?,
      json['url'] as String?,
    );

Map<String, dynamic> _$OriginResponseToJson(OriginResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) =>
    LocationResponse(
      json['name'] as String?,
      json['url'] as String?,
    );

Map<String, dynamic> _$LocationResponseToJson(LocationResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

ResultResponse _$ResultResponseFromJson(Map<String, dynamic> json) =>
    ResultResponse(
      json['id'] as String?,
      json['name'] as String?,
      json['status'] as String?,
      json['species'] as String?,
      json['type'] as String?,
      json['gender'] as String?,
      json['origin'] == null
          ? null
          : OriginResponse.fromJson(json['origin'] as Map<String, dynamic>),
      json['location'] == null
          ? null
          : LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      json['image'] as String?,
      (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['url'] as String?,
      json['created'] as String?,
    );

Map<String, dynamic> _$ResultResponseToJson(ResultResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
    };

CharacterResponse _$CharacterResponseFromJson(Map<String, dynamic> json) =>
    CharacterResponse(
      (json['results'] as List<dynamic>?)
          ?.map((e) => ResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..info = json['info'] == null
        ? null
        : InfoResponse.fromJson(json['info'] as Map<String, dynamic>);

Map<String, dynamic> _$CharacterResponseToJson(CharacterResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

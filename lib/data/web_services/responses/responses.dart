import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class InfoResponse {
  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "pages")
  int? pages;
  @JsonKey(name: "next")
  String? next;
  @JsonKey(name: "prev")
  String? prev;

  InfoResponse(this.count, this.pages, this.next, this.prev);

  // from json
  factory InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$InfoResponseToJson(this);
}

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "info")
  InfoResponse? info;

  BaseResponse(this.info);

  // from json
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

//////////////////////////////////////////////////////////
@JsonSerializable()
class OriginResponse {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "url")
  String? url;

  OriginResponse(this.name, this.url);

  // from json
  factory OriginResponse.fromJson(Map<String, dynamic> json) =>
      _$OriginResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$OriginResponseToJson(this);
}

@JsonSerializable()
class LocationResponse {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "url")
  String? url;

  LocationResponse(this.name, this.url);

  // from json
  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}

@JsonSerializable()
class ResultResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "species")
  String? species;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "gender")
  String? gender;
  @JsonKey(name: "origin")
  OriginResponse? origin;
  @JsonKey(name: "location")
  LocationResponse? location;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "episode")
  List<String>? episode;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "created")
  String? created;

  ResultResponse(
      this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created);

  // from json
  factory ResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$ResultResponseToJson(this);
}

@JsonSerializable()
class CharacterResponse extends BaseResponse {
  @JsonKey(name: "results")
  List<ResultResponse>? results;

  CharacterResponse(this.results) : super(null);
  // from json
  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$CharacterResponseToJson(this);
}

///////////////////////////////////////////////////////////////////////////

// To parse this JSON data, do
//
//     final discover = discoverFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'discover_get_model.freezed.dart';
part 'discover_get_model.g.dart';

Discover discoverFromJson(String str) => Discover.fromJson(json.decode(str));

String discoverToJson(Discover data) => json.encode(data.toJson());

@freezed
class Discover with _$Discover {
  const factory Discover({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "category_fn") required CategoryFn categoryFn,
    @JsonKey(name: "location") required Location location,
    @JsonKey(name: "likes") int? likes,
    @JsonKey(name: "source_link") String? sourceLink,
    @JsonKey(name: "social_media_link") String? socialMediaLink,
    @JsonKey(name: "like_url") String? likeUrl,
    @JsonKey(name: "poster") Poster? poster,
    @JsonKey(name: "iseditorchoice") bool? iseditorchoice,
    @JsonKey(name: "isowner") bool? isowner,
    @JsonKey(name: "logo") String? logo,
  }) = _Discover;

  factory Discover.fromJson(Map<String, dynamic> json) =>
      _$DiscoverFromJson(json);
}

@freezed
class CategoryFn with _$CategoryFn {
  const factory CategoryFn({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
  }) = _CategoryFn;

  factory CategoryFn.fromJson(Map<String, dynamic> json) =>
      _$CategoryFnFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: "origin") String? origin,
    @JsonKey(name: "based") String? based,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Poster with _$Poster {
  const factory Poster({
    @JsonKey(name: "profile_id") required String profileId,
    @JsonKey(name: "username") required String username,
  }) = _Poster;

  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Discover _$$_DiscoverFromJson(Map<String, dynamic> json) => _$_Discover(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      categoryFn:
          CategoryFn.fromJson(json['category_fn'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      likes: json['likes'] as int?,
      sourceLink: json['source_link'] as String?,
      socialMediaLink: json['social_media_link'] as String?,
      likeUrl: json['like_url'] as String?,
      poster: json['poster'] == null
          ? null
          : Poster.fromJson(json['poster'] as Map<String, dynamic>),
      iseditorchoice: json['iseditorchoice'] as bool?,
      isowner: json['isowner'] as bool?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_DiscoverToJson(_$_Discover instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category_fn': instance.categoryFn,
      'location': instance.location,
      'likes': instance.likes,
      'source_link': instance.sourceLink,
      'social_media_link': instance.socialMediaLink,
      'like_url': instance.likeUrl,
      'poster': instance.poster,
      'iseditorchoice': instance.iseditorchoice,
      'isowner': instance.isowner,
      'logo': instance.logo,
    };

_$_CategoryFn _$$_CategoryFnFromJson(Map<String, dynamic> json) =>
    _$_CategoryFn(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_CategoryFnToJson(_$_CategoryFn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      origin: json['origin'] as String?,
      based: json['based'] as String?,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'based': instance.based,
    };

_$_Poster _$$_PosterFromJson(Map<String, dynamic> json) => _$_Poster(
      profileId: json['profile_id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_PosterToJson(_$_Poster instance) => <String, dynamic>{
      'profile_id': instance.profileId,
      'username': instance.username,
    };

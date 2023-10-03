// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      id: json['id'] as int,
      discoverItem: json['discover_item'] as int,
      reviewDescription: json['review_description'] as String,
      createdTime: DateTime.parse(json['created_time'] as String),
      reviewer: Reviewer.fromJson(json['reviewer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'discover_item': instance.discoverItem,
      'review_description': instance.reviewDescription,
      'created_time': instance.createdTime.toIso8601String(),
      'reviewer': instance.reviewer,
    };

_$_Reviewer _$$_ReviewerFromJson(Map<String, dynamic> json) => _$_Reviewer(
      profileId: json['profile_id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_ReviewerToJson(_$_Reviewer instance) =>
    <String, dynamic>{
      'profile_id': instance.profileId,
      'username': instance.username,
    };

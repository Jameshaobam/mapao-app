// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      isAuthenticated: json['is_authenticated'] as bool,
      username: json['username'] as String,
      userid: json['userid'] as int,
      profileid: json['profileid'] as String,
      profilename: json['profilename'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'is_authenticated': instance.isAuthenticated,
      'username': instance.username,
      'userid': instance.userid,
      'profileid': instance.profileid,
      'profilename': instance.profilename,
    };

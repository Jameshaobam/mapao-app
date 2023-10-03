// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user.freezed.dart';
part 'user.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "is_authenticated") required bool isAuthenticated,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "userid") required int userid,
    @JsonKey(name: "profileid") required String profileid,
    @JsonKey(name: "profilename") required String profilename,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

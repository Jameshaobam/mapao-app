// To parse this JSON data, do
//
//     final review = reviewFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

Review reviewFromJson(String str) => Review.fromJson(json.decode(str));

String reviewToJson(Review data) => json.encode(data.toJson());

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "discover_item") required int discoverItem,
    @JsonKey(name: "review_description") required String reviewDescription,
    @JsonKey(name: "created_time") required DateTime createdTime,
    @JsonKey(name: "reviewer") required Reviewer reviewer,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class Reviewer with _$Reviewer {
  const factory Reviewer({
    @JsonKey(name: "profile_id") required String profileId,
    @JsonKey(name: "username") required String username,
  }) = _Reviewer;

  factory Reviewer.fromJson(Map<String, dynamic> json) =>
      _$ReviewerFromJson(json);
}

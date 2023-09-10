// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'event.freezed.dart';
part 'event.g.dart';

Event eventFromJson(String str) => Event.fromJson(json.decode(str));

String eventToJson(Event data) => json.encode(data.toJson());

@freezed
class Event with _$Event {
  const factory Event({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "spot") String? spot,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "host") String? host,
    @JsonKey(name: "poster") String? poster,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "facebook") dynamic facebook,
    @JsonKey(name: "instagram") String? instagram,
    @JsonKey(name: "ticket") String? ticket,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "host_phone_number") String? hostPhoneNumber,
    @JsonKey(name: "going_number") required int goingNumber,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as int,
      title: json['title'] as String?,
      description: json['description'] as String?,
      spot: json['spot'] as String?,
      state: json['state'] as String?,
      date: json['date'] as String?,
      host: json['host'] as String?,
      poster: json['poster'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      facebook: json['facebook'],
      instagram: json['instagram'] as String?,
      ticket: json['ticket'] as String?,
      imageUrl: json['image_url'] as String?,
      hostPhoneNumber: json['host_phone_number'] as String?,
      goingNumber: json['going_number'] as int,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'spot': instance.spot,
      'state': instance.state,
      'date': instance.date,
      'host': instance.host,
      'poster': instance.poster,
      'created': instance.created?.toIso8601String(),
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'ticket': instance.ticket,
      'image_url': instance.imageUrl,
      'host_phone_number': instance.hostPhoneNumber,
      'going_number': instance.goingNumber,
    };

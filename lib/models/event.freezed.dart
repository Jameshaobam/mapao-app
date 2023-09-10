// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "spot")
  String? get spot => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "host")
  String? get host => throw _privateConstructorUsedError;
  @JsonKey(name: "poster")
  String? get poster => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "facebook")
  dynamic get facebook => throw _privateConstructorUsedError;
  @JsonKey(name: "instagram")
  String? get instagram => throw _privateConstructorUsedError;
  @JsonKey(name: "ticket")
  String? get ticket => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "host_phone_number")
  String? get hostPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "going_number")
  int get goingNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
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
      @JsonKey(name: "going_number") int goingNumber});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? spot = freezed,
    Object? state = freezed,
    Object? date = freezed,
    Object? host = freezed,
    Object? poster = freezed,
    Object? created = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? ticket = freezed,
    Object? imageUrl = freezed,
    Object? hostPhoneNumber = freezed,
    Object? goingNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      spot: freezed == spot
          ? _value.spot
          : spot // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as dynamic,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hostPhoneNumber: freezed == hostPhoneNumber
          ? _value.hostPhoneNumber
          : hostPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      goingNumber: null == goingNumber
          ? _value.goingNumber
          : goingNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
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
      @JsonKey(name: "going_number") int goingNumber});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res, _$_Event>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? spot = freezed,
    Object? state = freezed,
    Object? date = freezed,
    Object? host = freezed,
    Object? poster = freezed,
    Object? created = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? ticket = freezed,
    Object? imageUrl = freezed,
    Object? hostPhoneNumber = freezed,
    Object? goingNumber = null,
  }) {
    return _then(_$_Event(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      spot: freezed == spot
          ? _value.spot
          : spot // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as dynamic,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hostPhoneNumber: freezed == hostPhoneNumber
          ? _value.hostPhoneNumber
          : hostPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      goingNumber: null == goingNumber
          ? _value.goingNumber
          : goingNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event implements _Event {
  const _$_Event(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "spot") this.spot,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "host") this.host,
      @JsonKey(name: "poster") this.poster,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "facebook") this.facebook,
      @JsonKey(name: "instagram") this.instagram,
      @JsonKey(name: "ticket") this.ticket,
      @JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "host_phone_number") this.hostPhoneNumber,
      @JsonKey(name: "going_number") required this.goingNumber});

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "spot")
  final String? spot;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "host")
  final String? host;
  @override
  @JsonKey(name: "poster")
  final String? poster;
  @override
  @JsonKey(name: "created")
  final DateTime? created;
  @override
  @JsonKey(name: "facebook")
  final dynamic facebook;
  @override
  @JsonKey(name: "instagram")
  final String? instagram;
  @override
  @JsonKey(name: "ticket")
  final String? ticket;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "host_phone_number")
  final String? hostPhoneNumber;
  @override
  @JsonKey(name: "going_number")
  final int goingNumber;

  @override
  String toString() {
    return 'Event(id: $id, title: $title, description: $description, spot: $spot, state: $state, date: $date, host: $host, poster: $poster, created: $created, facebook: $facebook, instagram: $instagram, ticket: $ticket, imageUrl: $imageUrl, hostPhoneNumber: $hostPhoneNumber, goingNumber: $goingNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.spot, spot) || other.spot == spot) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other.facebook, facebook) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.hostPhoneNumber, hostPhoneNumber) ||
                other.hostPhoneNumber == hostPhoneNumber) &&
            (identical(other.goingNumber, goingNumber) ||
                other.goingNumber == goingNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      spot,
      state,
      date,
      host,
      poster,
      created,
      const DeepCollectionEquality().hash(facebook),
      instagram,
      ticket,
      imageUrl,
      hostPhoneNumber,
      goingNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "spot") final String? spot,
          @JsonKey(name: "state") final String? state,
          @JsonKey(name: "date") final String? date,
          @JsonKey(name: "host") final String? host,
          @JsonKey(name: "poster") final String? poster,
          @JsonKey(name: "created") final DateTime? created,
          @JsonKey(name: "facebook") final dynamic facebook,
          @JsonKey(name: "instagram") final String? instagram,
          @JsonKey(name: "ticket") final String? ticket,
          @JsonKey(name: "image_url") final String? imageUrl,
          @JsonKey(name: "host_phone_number") final String? hostPhoneNumber,
          @JsonKey(name: "going_number") required final int goingNumber}) =
      _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "spot")
  String? get spot;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "host")
  String? get host;
  @override
  @JsonKey(name: "poster")
  String? get poster;
  @override
  @JsonKey(name: "created")
  DateTime? get created;
  @override
  @JsonKey(name: "facebook")
  dynamic get facebook;
  @override
  @JsonKey(name: "instagram")
  String? get instagram;
  @override
  @JsonKey(name: "ticket")
  String? get ticket;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "host_phone_number")
  String? get hostPhoneNumber;
  @override
  @JsonKey(name: "going_number")
  int get goingNumber;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}

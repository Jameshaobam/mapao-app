// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "discover_item")
  int get discoverItem => throw _privateConstructorUsedError;
  @JsonKey(name: "review_description")
  String get reviewDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "created_time")
  DateTime get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewer")
  Reviewer get reviewer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "discover_item") int discoverItem,
      @JsonKey(name: "review_description") String reviewDescription,
      @JsonKey(name: "created_time") DateTime createdTime,
      @JsonKey(name: "reviewer") Reviewer reviewer});

  $ReviewerCopyWith<$Res> get reviewer;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discoverItem = null,
    Object? reviewDescription = null,
    Object? createdTime = null,
    Object? reviewer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discoverItem: null == discoverItem
          ? _value.discoverItem
          : discoverItem // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDescription: null == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviewer: null == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as Reviewer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewerCopyWith<$Res> get reviewer {
    return $ReviewerCopyWith<$Res>(_value.reviewer, (value) {
      return _then(_value.copyWith(reviewer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "discover_item") int discoverItem,
      @JsonKey(name: "review_description") String reviewDescription,
      @JsonKey(name: "created_time") DateTime createdTime,
      @JsonKey(name: "reviewer") Reviewer reviewer});

  @override
  $ReviewerCopyWith<$Res> get reviewer;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discoverItem = null,
    Object? reviewDescription = null,
    Object? createdTime = null,
    Object? reviewer = null,
  }) {
    return _then(_$_Review(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discoverItem: null == discoverItem
          ? _value.discoverItem
          : discoverItem // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDescription: null == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviewer: null == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as Reviewer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "discover_item") required this.discoverItem,
      @JsonKey(name: "review_description") required this.reviewDescription,
      @JsonKey(name: "created_time") required this.createdTime,
      @JsonKey(name: "reviewer") required this.reviewer});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "discover_item")
  final int discoverItem;
  @override
  @JsonKey(name: "review_description")
  final String reviewDescription;
  @override
  @JsonKey(name: "created_time")
  final DateTime createdTime;
  @override
  @JsonKey(name: "reviewer")
  final Reviewer reviewer;

  @override
  String toString() {
    return 'Review(id: $id, discoverItem: $discoverItem, reviewDescription: $reviewDescription, createdTime: $createdTime, reviewer: $reviewer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discoverItem, discoverItem) ||
                other.discoverItem == discoverItem) &&
            (identical(other.reviewDescription, reviewDescription) ||
                other.reviewDescription == reviewDescription) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, discoverItem, reviewDescription, createdTime, reviewer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "discover_item") required final int discoverItem,
      @JsonKey(name: "review_description")
      required final String reviewDescription,
      @JsonKey(name: "created_time") required final DateTime createdTime,
      @JsonKey(name: "reviewer") required final Reviewer reviewer}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "discover_item")
  int get discoverItem;
  @override
  @JsonKey(name: "review_description")
  String get reviewDescription;
  @override
  @JsonKey(name: "created_time")
  DateTime get createdTime;
  @override
  @JsonKey(name: "reviewer")
  Reviewer get reviewer;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return _Reviewer.fromJson(json);
}

/// @nodoc
mixin _$Reviewer {
  @JsonKey(name: "profile_id")
  String get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewerCopyWith<Reviewer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewerCopyWith<$Res> {
  factory $ReviewerCopyWith(Reviewer value, $Res Function(Reviewer) then) =
      _$ReviewerCopyWithImpl<$Res, Reviewer>;
  @useResult
  $Res call(
      {@JsonKey(name: "profile_id") String profileId,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class _$ReviewerCopyWithImpl<$Res, $Val extends Reviewer>
    implements $ReviewerCopyWith<$Res> {
  _$ReviewerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewerCopyWith<$Res> implements $ReviewerCopyWith<$Res> {
  factory _$$_ReviewerCopyWith(
          _$_Reviewer value, $Res Function(_$_Reviewer) then) =
      __$$_ReviewerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profile_id") String profileId,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class __$$_ReviewerCopyWithImpl<$Res>
    extends _$ReviewerCopyWithImpl<$Res, _$_Reviewer>
    implements _$$_ReviewerCopyWith<$Res> {
  __$$_ReviewerCopyWithImpl(
      _$_Reviewer _value, $Res Function(_$_Reviewer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
    Object? username = null,
  }) {
    return _then(_$_Reviewer(
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reviewer implements _Reviewer {
  const _$_Reviewer(
      {@JsonKey(name: "profile_id") required this.profileId,
      @JsonKey(name: "username") required this.username});

  factory _$_Reviewer.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewerFromJson(json);

  @override
  @JsonKey(name: "profile_id")
  final String profileId;
  @override
  @JsonKey(name: "username")
  final String username;

  @override
  String toString() {
    return 'Reviewer(profileId: $profileId, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reviewer &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, profileId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewerCopyWith<_$_Reviewer> get copyWith =>
      __$$_ReviewerCopyWithImpl<_$_Reviewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewerToJson(
      this,
    );
  }
}

abstract class _Reviewer implements Reviewer {
  const factory _Reviewer(
      {@JsonKey(name: "profile_id") required final String profileId,
      @JsonKey(name: "username") required final String username}) = _$_Reviewer;

  factory _Reviewer.fromJson(Map<String, dynamic> json) = _$_Reviewer.fromJson;

  @override
  @JsonKey(name: "profile_id")
  String get profileId;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewerCopyWith<_$_Reviewer> get copyWith =>
      throw _privateConstructorUsedError;
}

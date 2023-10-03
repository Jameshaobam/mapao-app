// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "is_authenticated")
  bool get isAuthenticated => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  int get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "profileid")
  String get profileid => throw _privateConstructorUsedError;
  @JsonKey(name: "profilename")
  String get profilename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_authenticated") bool isAuthenticated,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "userid") int userid,
      @JsonKey(name: "profileid") String profileid,
      @JsonKey(name: "profilename") String profilename});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? username = null,
    Object? userid = null,
    Object? profileid = null,
    Object? profilename = null,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      profileid: null == profileid
          ? _value.profileid
          : profileid // ignore: cast_nullable_to_non_nullable
              as String,
      profilename: null == profilename
          ? _value.profilename
          : profilename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_authenticated") bool isAuthenticated,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "userid") int userid,
      @JsonKey(name: "profileid") String profileid,
      @JsonKey(name: "profilename") String profilename});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? username = null,
    Object? userid = null,
    Object? profileid = null,
    Object? profilename = null,
  }) {
    return _then(_$_User(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int,
      profileid: null == profileid
          ? _value.profileid
          : profileid // ignore: cast_nullable_to_non_nullable
              as String,
      profilename: null == profilename
          ? _value.profilename
          : profilename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@JsonKey(name: "is_authenticated") required this.isAuthenticated,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "userid") required this.userid,
      @JsonKey(name: "profileid") required this.profileid,
      @JsonKey(name: "profilename") required this.profilename});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: "is_authenticated")
  final bool isAuthenticated;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "userid")
  final int userid;
  @override
  @JsonKey(name: "profileid")
  final String profileid;
  @override
  @JsonKey(name: "profilename")
  final String profilename;

  @override
  String toString() {
    return 'User(isAuthenticated: $isAuthenticated, username: $username, userid: $userid, profileid: $profileid, profilename: $profilename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.profileid, profileid) ||
                other.profileid == profileid) &&
            (identical(other.profilename, profilename) ||
                other.profilename == profilename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isAuthenticated, username, userid, profileid, profilename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: "is_authenticated") required final bool isAuthenticated,
      @JsonKey(name: "username") required final String username,
      @JsonKey(name: "userid") required final int userid,
      @JsonKey(name: "profileid") required final String profileid,
      @JsonKey(name: "profilename")
      required final String profilename}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: "is_authenticated")
  bool get isAuthenticated;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "userid")
  int get userid;
  @override
  @JsonKey(name: "profileid")
  String get profileid;
  @override
  @JsonKey(name: "profilename")
  String get profilename;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

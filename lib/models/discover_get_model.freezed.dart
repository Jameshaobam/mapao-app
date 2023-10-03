// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_get_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Discover _$DiscoverFromJson(Map<String, dynamic> json) {
  return _Discover.fromJson(json);
}

/// @nodoc
mixin _$Discover {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "category_fn")
  CategoryFn get categoryFn => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(name: "likes")
  int? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: "source_link")
  String? get sourceLink => throw _privateConstructorUsedError;
  @JsonKey(name: "social_media_link")
  String? get socialMediaLink => throw _privateConstructorUsedError;
  @JsonKey(name: "like_url")
  String? get likeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "poster")
  Poster? get poster => throw _privateConstructorUsedError;
  @JsonKey(name: "iseditorchoice")
  bool? get iseditorchoice => throw _privateConstructorUsedError;
  @JsonKey(name: "isowner")
  bool? get isowner => throw _privateConstructorUsedError;
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoverCopyWith<Discover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverCopyWith<$Res> {
  factory $DiscoverCopyWith(Discover value, $Res Function(Discover) then) =
      _$DiscoverCopyWithImpl<$Res, Discover>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "category_fn") CategoryFn categoryFn,
      @JsonKey(name: "location") Location location,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "source_link") String? sourceLink,
      @JsonKey(name: "social_media_link") String? socialMediaLink,
      @JsonKey(name: "like_url") String? likeUrl,
      @JsonKey(name: "poster") Poster? poster,
      @JsonKey(name: "iseditorchoice") bool? iseditorchoice,
      @JsonKey(name: "isowner") bool? isowner,
      @JsonKey(name: "logo") String? logo});

  $CategoryFnCopyWith<$Res> get categoryFn;
  $LocationCopyWith<$Res> get location;
  $PosterCopyWith<$Res>? get poster;
}

/// @nodoc
class _$DiscoverCopyWithImpl<$Res, $Val extends Discover>
    implements $DiscoverCopyWith<$Res> {
  _$DiscoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryFn = null,
    Object? location = null,
    Object? likes = freezed,
    Object? sourceLink = freezed,
    Object? socialMediaLink = freezed,
    Object? likeUrl = freezed,
    Object? poster = freezed,
    Object? iseditorchoice = freezed,
    Object? isowner = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryFn: null == categoryFn
          ? _value.categoryFn
          : categoryFn // ignore: cast_nullable_to_non_nullable
              as CategoryFn,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceLink: freezed == sourceLink
          ? _value.sourceLink
          : sourceLink // ignore: cast_nullable_to_non_nullable
              as String?,
      socialMediaLink: freezed == socialMediaLink
          ? _value.socialMediaLink
          : socialMediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      likeUrl: freezed == likeUrl
          ? _value.likeUrl
          : likeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Poster?,
      iseditorchoice: freezed == iseditorchoice
          ? _value.iseditorchoice
          : iseditorchoice // ignore: cast_nullable_to_non_nullable
              as bool?,
      isowner: freezed == isowner
          ? _value.isowner
          : isowner // ignore: cast_nullable_to_non_nullable
              as bool?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryFnCopyWith<$Res> get categoryFn {
    return $CategoryFnCopyWith<$Res>(_value.categoryFn, (value) {
      return _then(_value.copyWith(categoryFn: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PosterCopyWith<$Res>? get poster {
    if (_value.poster == null) {
      return null;
    }

    return $PosterCopyWith<$Res>(_value.poster!, (value) {
      return _then(_value.copyWith(poster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DiscoverCopyWith<$Res> implements $DiscoverCopyWith<$Res> {
  factory _$$_DiscoverCopyWith(
          _$_Discover value, $Res Function(_$_Discover) then) =
      __$$_DiscoverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "category_fn") CategoryFn categoryFn,
      @JsonKey(name: "location") Location location,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "source_link") String? sourceLink,
      @JsonKey(name: "social_media_link") String? socialMediaLink,
      @JsonKey(name: "like_url") String? likeUrl,
      @JsonKey(name: "poster") Poster? poster,
      @JsonKey(name: "iseditorchoice") bool? iseditorchoice,
      @JsonKey(name: "isowner") bool? isowner,
      @JsonKey(name: "logo") String? logo});

  @override
  $CategoryFnCopyWith<$Res> get categoryFn;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $PosterCopyWith<$Res>? get poster;
}

/// @nodoc
class __$$_DiscoverCopyWithImpl<$Res>
    extends _$DiscoverCopyWithImpl<$Res, _$_Discover>
    implements _$$_DiscoverCopyWith<$Res> {
  __$$_DiscoverCopyWithImpl(
      _$_Discover _value, $Res Function(_$_Discover) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryFn = null,
    Object? location = null,
    Object? likes = freezed,
    Object? sourceLink = freezed,
    Object? socialMediaLink = freezed,
    Object? likeUrl = freezed,
    Object? poster = freezed,
    Object? iseditorchoice = freezed,
    Object? isowner = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_Discover(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryFn: null == categoryFn
          ? _value.categoryFn
          : categoryFn // ignore: cast_nullable_to_non_nullable
              as CategoryFn,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceLink: freezed == sourceLink
          ? _value.sourceLink
          : sourceLink // ignore: cast_nullable_to_non_nullable
              as String?,
      socialMediaLink: freezed == socialMediaLink
          ? _value.socialMediaLink
          : socialMediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      likeUrl: freezed == likeUrl
          ? _value.likeUrl
          : likeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Poster?,
      iseditorchoice: freezed == iseditorchoice
          ? _value.iseditorchoice
          : iseditorchoice // ignore: cast_nullable_to_non_nullable
              as bool?,
      isowner: freezed == isowner
          ? _value.isowner
          : isowner // ignore: cast_nullable_to_non_nullable
              as bool?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Discover implements _Discover {
  const _$_Discover(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "category_fn") required this.categoryFn,
      @JsonKey(name: "location") required this.location,
      @JsonKey(name: "likes") this.likes,
      @JsonKey(name: "source_link") this.sourceLink,
      @JsonKey(name: "social_media_link") this.socialMediaLink,
      @JsonKey(name: "like_url") this.likeUrl,
      @JsonKey(name: "poster") this.poster,
      @JsonKey(name: "iseditorchoice") this.iseditorchoice,
      @JsonKey(name: "isowner") this.isowner,
      @JsonKey(name: "logo") this.logo});

  factory _$_Discover.fromJson(Map<String, dynamic> json) =>
      _$$_DiscoverFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "category_fn")
  final CategoryFn categoryFn;
  @override
  @JsonKey(name: "location")
  final Location location;
  @override
  @JsonKey(name: "likes")
  final int? likes;
  @override
  @JsonKey(name: "source_link")
  final String? sourceLink;
  @override
  @JsonKey(name: "social_media_link")
  final String? socialMediaLink;
  @override
  @JsonKey(name: "like_url")
  final String? likeUrl;
  @override
  @JsonKey(name: "poster")
  final Poster? poster;
  @override
  @JsonKey(name: "iseditorchoice")
  final bool? iseditorchoice;
  @override
  @JsonKey(name: "isowner")
  final bool? isowner;
  @override
  @JsonKey(name: "logo")
  final String? logo;

  @override
  String toString() {
    return 'Discover(id: $id, title: $title, description: $description, categoryFn: $categoryFn, location: $location, likes: $likes, sourceLink: $sourceLink, socialMediaLink: $socialMediaLink, likeUrl: $likeUrl, poster: $poster, iseditorchoice: $iseditorchoice, isowner: $isowner, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Discover &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryFn, categoryFn) ||
                other.categoryFn == categoryFn) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.sourceLink, sourceLink) ||
                other.sourceLink == sourceLink) &&
            (identical(other.socialMediaLink, socialMediaLink) ||
                other.socialMediaLink == socialMediaLink) &&
            (identical(other.likeUrl, likeUrl) || other.likeUrl == likeUrl) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.iseditorchoice, iseditorchoice) ||
                other.iseditorchoice == iseditorchoice) &&
            (identical(other.isowner, isowner) || other.isowner == isowner) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      categoryFn,
      location,
      likes,
      sourceLink,
      socialMediaLink,
      likeUrl,
      poster,
      iseditorchoice,
      isowner,
      logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscoverCopyWith<_$_Discover> get copyWith =>
      __$$_DiscoverCopyWithImpl<_$_Discover>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscoverToJson(
      this,
    );
  }
}

abstract class _Discover implements Discover {
  const factory _Discover(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "category_fn") required final CategoryFn categoryFn,
      @JsonKey(name: "location") required final Location location,
      @JsonKey(name: "likes") final int? likes,
      @JsonKey(name: "source_link") final String? sourceLink,
      @JsonKey(name: "social_media_link") final String? socialMediaLink,
      @JsonKey(name: "like_url") final String? likeUrl,
      @JsonKey(name: "poster") final Poster? poster,
      @JsonKey(name: "iseditorchoice") final bool? iseditorchoice,
      @JsonKey(name: "isowner") final bool? isowner,
      @JsonKey(name: "logo") final String? logo}) = _$_Discover;

  factory _Discover.fromJson(Map<String, dynamic> json) = _$_Discover.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "category_fn")
  CategoryFn get categoryFn;
  @override
  @JsonKey(name: "location")
  Location get location;
  @override
  @JsonKey(name: "likes")
  int? get likes;
  @override
  @JsonKey(name: "source_link")
  String? get sourceLink;
  @override
  @JsonKey(name: "social_media_link")
  String? get socialMediaLink;
  @override
  @JsonKey(name: "like_url")
  String? get likeUrl;
  @override
  @JsonKey(name: "poster")
  Poster? get poster;
  @override
  @JsonKey(name: "iseditorchoice")
  bool? get iseditorchoice;
  @override
  @JsonKey(name: "isowner")
  bool? get isowner;
  @override
  @JsonKey(name: "logo")
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverCopyWith<_$_Discover> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryFn _$CategoryFnFromJson(Map<String, dynamic> json) {
  return _CategoryFn.fromJson(json);
}

/// @nodoc
mixin _$CategoryFn {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryFnCopyWith<CategoryFn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFnCopyWith<$Res> {
  factory $CategoryFnCopyWith(
          CategoryFn value, $Res Function(CategoryFn) then) =
      _$CategoryFnCopyWithImpl<$Res, CategoryFn>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$CategoryFnCopyWithImpl<$Res, $Val extends CategoryFn>
    implements $CategoryFnCopyWith<$Res> {
  _$CategoryFnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryFnCopyWith<$Res>
    implements $CategoryFnCopyWith<$Res> {
  factory _$$_CategoryFnCopyWith(
          _$_CategoryFn value, $Res Function(_$_CategoryFn) then) =
      __$$_CategoryFnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$$_CategoryFnCopyWithImpl<$Res>
    extends _$CategoryFnCopyWithImpl<$Res, _$_CategoryFn>
    implements _$$_CategoryFnCopyWith<$Res> {
  __$$_CategoryFnCopyWithImpl(
      _$_CategoryFn _value, $Res Function(_$_CategoryFn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_CategoryFn(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryFn implements _CategoryFn {
  const _$_CategoryFn(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description});

  factory _$_CategoryFn.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFnFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'CategoryFn(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryFn &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryFnCopyWith<_$_CategoryFn> get copyWith =>
      __$$_CategoryFnCopyWithImpl<_$_CategoryFn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryFnToJson(
      this,
    );
  }
}

abstract class _CategoryFn implements CategoryFn {
  const factory _CategoryFn(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description}) = _$_CategoryFn;

  factory _CategoryFn.fromJson(Map<String, dynamic> json) =
      _$_CategoryFn.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryFnCopyWith<_$_CategoryFn> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: "origin")
  String? get origin => throw _privateConstructorUsedError;
  @JsonKey(name: "based")
  String? get based => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: "origin") String? origin,
      @JsonKey(name: "based") String? based});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = freezed,
    Object? based = freezed,
  }) {
    return _then(_value.copyWith(
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      based: freezed == based
          ? _value.based
          : based // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "origin") String? origin,
      @JsonKey(name: "based") String? based});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = freezed,
    Object? based = freezed,
  }) {
    return _then(_$_Location(
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      based: freezed == based
          ? _value.based
          : based // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {@JsonKey(name: "origin") this.origin,
      @JsonKey(name: "based") this.based});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  @JsonKey(name: "origin")
  final String? origin;
  @override
  @JsonKey(name: "based")
  final String? based;

  @override
  String toString() {
    return 'Location(origin: $origin, based: $based)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.based, based) || other.based == based));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, origin, based);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@JsonKey(name: "origin") final String? origin,
      @JsonKey(name: "based") final String? based}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  @JsonKey(name: "origin")
  String? get origin;
  @override
  @JsonKey(name: "based")
  String? get based;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Poster _$PosterFromJson(Map<String, dynamic> json) {
  return _Poster.fromJson(json);
}

/// @nodoc
mixin _$Poster {
  @JsonKey(name: "profile_id")
  String get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosterCopyWith<Poster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterCopyWith<$Res> {
  factory $PosterCopyWith(Poster value, $Res Function(Poster) then) =
      _$PosterCopyWithImpl<$Res, Poster>;
  @useResult
  $Res call(
      {@JsonKey(name: "profile_id") String profileId,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class _$PosterCopyWithImpl<$Res, $Val extends Poster>
    implements $PosterCopyWith<$Res> {
  _$PosterCopyWithImpl(this._value, this._then);

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
abstract class _$$_PosterCopyWith<$Res> implements $PosterCopyWith<$Res> {
  factory _$$_PosterCopyWith(_$_Poster value, $Res Function(_$_Poster) then) =
      __$$_PosterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profile_id") String profileId,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class __$$_PosterCopyWithImpl<$Res>
    extends _$PosterCopyWithImpl<$Res, _$_Poster>
    implements _$$_PosterCopyWith<$Res> {
  __$$_PosterCopyWithImpl(_$_Poster _value, $Res Function(_$_Poster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = null,
    Object? username = null,
  }) {
    return _then(_$_Poster(
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
class _$_Poster implements _Poster {
  const _$_Poster(
      {@JsonKey(name: "profile_id") required this.profileId,
      @JsonKey(name: "username") required this.username});

  factory _$_Poster.fromJson(Map<String, dynamic> json) =>
      _$$_PosterFromJson(json);

  @override
  @JsonKey(name: "profile_id")
  final String profileId;
  @override
  @JsonKey(name: "username")
  final String username;

  @override
  String toString() {
    return 'Poster(profileId: $profileId, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Poster &&
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
  _$$_PosterCopyWith<_$_Poster> get copyWith =>
      __$$_PosterCopyWithImpl<_$_Poster>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosterToJson(
      this,
    );
  }
}

abstract class _Poster implements Poster {
  const factory _Poster(
      {@JsonKey(name: "profile_id") required final String profileId,
      @JsonKey(name: "username") required final String username}) = _$_Poster;

  factory _Poster.fromJson(Map<String, dynamic> json) = _$_Poster.fromJson;

  @override
  @JsonKey(name: "profile_id")
  String get profileId;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_PosterCopyWith<_$_Poster> get copyWith =>
      throw _privateConstructorUsedError;
}

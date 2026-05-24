// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostMedia {

 String get id; String get postId; String get url; String get mediaType; int? get width; int? get height; int? get duration; int get position; DateTime? get createdAt;
/// Create a copy of PostMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostMediaCopyWith<PostMedia> get copyWith => _$PostMediaCopyWithImpl<PostMedia>(this as PostMedia, _$identity);

  /// Serializes this PostMedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.url, url) || other.url == url)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.position, position) || other.position == position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,url,mediaType,width,height,duration,position,createdAt);

@override
String toString() {
  return 'PostMedia(id: $id, postId: $postId, url: $url, mediaType: $mediaType, width: $width, height: $height, duration: $duration, position: $position, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PostMediaCopyWith<$Res>  {
  factory $PostMediaCopyWith(PostMedia value, $Res Function(PostMedia) _then) = _$PostMediaCopyWithImpl;
@useResult
$Res call({
 String id, String postId, String url, String mediaType, int? width, int? height, int? duration, int position, DateTime? createdAt
});




}
/// @nodoc
class _$PostMediaCopyWithImpl<$Res>
    implements $PostMediaCopyWith<$Res> {
  _$PostMediaCopyWithImpl(this._self, this._then);

  final PostMedia _self;
  final $Res Function(PostMedia) _then;

/// Create a copy of PostMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? postId = null,Object? url = null,Object? mediaType = null,Object? width = freezed,Object? height = freezed,Object? duration = freezed,Object? position = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostMedia].
extension PostMediaPatterns on PostMedia {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostMedia() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostMedia value)  $default,){
final _that = this;
switch (_that) {
case _PostMedia():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostMedia value)?  $default,){
final _that = this;
switch (_that) {
case _PostMedia() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String postId,  String url,  String mediaType,  int? width,  int? height,  int? duration,  int position,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostMedia() when $default != null:
return $default(_that.id,_that.postId,_that.url,_that.mediaType,_that.width,_that.height,_that.duration,_that.position,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String postId,  String url,  String mediaType,  int? width,  int? height,  int? duration,  int position,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PostMedia():
return $default(_that.id,_that.postId,_that.url,_that.mediaType,_that.width,_that.height,_that.duration,_that.position,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String postId,  String url,  String mediaType,  int? width,  int? height,  int? duration,  int position,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PostMedia() when $default != null:
return $default(_that.id,_that.postId,_that.url,_that.mediaType,_that.width,_that.height,_that.duration,_that.position,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostMedia implements PostMedia {
  const _PostMedia({required this.id, required this.postId, required this.url, required this.mediaType, this.width, this.height, this.duration, this.position = 0, this.createdAt});
  factory _PostMedia.fromJson(Map<String, dynamic> json) => _$PostMediaFromJson(json);

@override final  String id;
@override final  String postId;
@override final  String url;
@override final  String mediaType;
@override final  int? width;
@override final  int? height;
@override final  int? duration;
@override@JsonKey() final  int position;
@override final  DateTime? createdAt;

/// Create a copy of PostMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostMediaCopyWith<_PostMedia> get copyWith => __$PostMediaCopyWithImpl<_PostMedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostMediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.url, url) || other.url == url)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.position, position) || other.position == position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,url,mediaType,width,height,duration,position,createdAt);

@override
String toString() {
  return 'PostMedia(id: $id, postId: $postId, url: $url, mediaType: $mediaType, width: $width, height: $height, duration: $duration, position: $position, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PostMediaCopyWith<$Res> implements $PostMediaCopyWith<$Res> {
  factory _$PostMediaCopyWith(_PostMedia value, $Res Function(_PostMedia) _then) = __$PostMediaCopyWithImpl;
@override @useResult
$Res call({
 String id, String postId, String url, String mediaType, int? width, int? height, int? duration, int position, DateTime? createdAt
});




}
/// @nodoc
class __$PostMediaCopyWithImpl<$Res>
    implements _$PostMediaCopyWith<$Res> {
  __$PostMediaCopyWithImpl(this._self, this._then);

  final _PostMedia _self;
  final $Res Function(_PostMedia) _then;

/// Create a copy of PostMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? postId = null,Object? url = null,Object? mediaType = null,Object? width = freezed,Object? height = freezed,Object? duration = freezed,Object? position = null,Object? createdAt = freezed,}) {
  return _then(_PostMedia(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$Post {

 String get id; String get userId; String? get petId; PostType get postType; String? get caption; String? get location; List<AnimalType> get animalTypes; List<String> get hashtags; bool get isArchived; DateTime? get expiresAt; DateTime? get createdAt; DateTime? get updatedAt;// joined
 String? get username; String? get displayName; String? get authorAvatarUrl; List<PostMedia> get media; int get likesCount; int get commentsCount; int get savesCount; bool get isLikedByMe; bool get isSavedByMe;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.petId, petId) || other.petId == petId)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.animalTypes, animalTypes)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.savesCount, savesCount) || other.savesCount == savesCount)&&(identical(other.isLikedByMe, isLikedByMe) || other.isLikedByMe == isLikedByMe)&&(identical(other.isSavedByMe, isSavedByMe) || other.isSavedByMe == isSavedByMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,petId,postType,caption,location,const DeepCollectionEquality().hash(animalTypes),const DeepCollectionEquality().hash(hashtags),isArchived,expiresAt,createdAt,updatedAt,username,displayName,authorAvatarUrl,const DeepCollectionEquality().hash(media),likesCount,commentsCount,savesCount,isLikedByMe,isSavedByMe]);

@override
String toString() {
  return 'Post(id: $id, userId: $userId, petId: $petId, postType: $postType, caption: $caption, location: $location, animalTypes: $animalTypes, hashtags: $hashtags, isArchived: $isArchived, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, username: $username, displayName: $displayName, authorAvatarUrl: $authorAvatarUrl, media: $media, likesCount: $likesCount, commentsCount: $commentsCount, savesCount: $savesCount, isLikedByMe: $isLikedByMe, isSavedByMe: $isSavedByMe)';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String? petId, PostType postType, String? caption, String? location, List<AnimalType> animalTypes, List<String> hashtags, bool isArchived, DateTime? expiresAt, DateTime? createdAt, DateTime? updatedAt, String? username, String? displayName, String? authorAvatarUrl, List<PostMedia> media, int likesCount, int commentsCount, int savesCount, bool isLikedByMe, bool isSavedByMe
});




}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? petId = freezed,Object? postType = null,Object? caption = freezed,Object? location = freezed,Object? animalTypes = null,Object? hashtags = null,Object? isArchived = null,Object? expiresAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? username = freezed,Object? displayName = freezed,Object? authorAvatarUrl = freezed,Object? media = null,Object? likesCount = null,Object? commentsCount = null,Object? savesCount = null,Object? isLikedByMe = null,Object? isSavedByMe = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,petId: freezed == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as String?,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,animalTypes: null == animalTypes ? _self.animalTypes : animalTypes // ignore: cast_nullable_to_non_nullable
as List<AnimalType>,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<PostMedia>,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,savesCount: null == savesCount ? _self.savesCount : savesCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByMe: null == isLikedByMe ? _self.isLikedByMe : isLikedByMe // ignore: cast_nullable_to_non_nullable
as bool,isSavedByMe: null == isSavedByMe ? _self.isSavedByMe : isSavedByMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Post].
extension PostPatterns on Post {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Post value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Post value)  $default,){
final _that = this;
switch (_that) {
case _Post():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Post value)?  $default,){
final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String? petId,  PostType postType,  String? caption,  String? location,  List<AnimalType> animalTypes,  List<String> hashtags,  bool isArchived,  DateTime? expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  String? username,  String? displayName,  String? authorAvatarUrl,  List<PostMedia> media,  int likesCount,  int commentsCount,  int savesCount,  bool isLikedByMe,  bool isSavedByMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.userId,_that.petId,_that.postType,_that.caption,_that.location,_that.animalTypes,_that.hashtags,_that.isArchived,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.username,_that.displayName,_that.authorAvatarUrl,_that.media,_that.likesCount,_that.commentsCount,_that.savesCount,_that.isLikedByMe,_that.isSavedByMe);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String? petId,  PostType postType,  String? caption,  String? location,  List<AnimalType> animalTypes,  List<String> hashtags,  bool isArchived,  DateTime? expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  String? username,  String? displayName,  String? authorAvatarUrl,  List<PostMedia> media,  int likesCount,  int commentsCount,  int savesCount,  bool isLikedByMe,  bool isSavedByMe)  $default,) {final _that = this;
switch (_that) {
case _Post():
return $default(_that.id,_that.userId,_that.petId,_that.postType,_that.caption,_that.location,_that.animalTypes,_that.hashtags,_that.isArchived,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.username,_that.displayName,_that.authorAvatarUrl,_that.media,_that.likesCount,_that.commentsCount,_that.savesCount,_that.isLikedByMe,_that.isSavedByMe);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String? petId,  PostType postType,  String? caption,  String? location,  List<AnimalType> animalTypes,  List<String> hashtags,  bool isArchived,  DateTime? expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  String? username,  String? displayName,  String? authorAvatarUrl,  List<PostMedia> media,  int likesCount,  int commentsCount,  int savesCount,  bool isLikedByMe,  bool isSavedByMe)?  $default,) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.userId,_that.petId,_that.postType,_that.caption,_that.location,_that.animalTypes,_that.hashtags,_that.isArchived,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.username,_that.displayName,_that.authorAvatarUrl,_that.media,_that.likesCount,_that.commentsCount,_that.savesCount,_that.isLikedByMe,_that.isSavedByMe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Post implements Post {
  const _Post({required this.id, required this.userId, this.petId, this.postType = PostType.photo, this.caption, this.location, final  List<AnimalType> animalTypes = const [], final  List<String> hashtags = const [], this.isArchived = false, this.expiresAt, this.createdAt, this.updatedAt, this.username, this.displayName, this.authorAvatarUrl, final  List<PostMedia> media = const [], this.likesCount = 0, this.commentsCount = 0, this.savesCount = 0, this.isLikedByMe = false, this.isSavedByMe = false}): _animalTypes = animalTypes,_hashtags = hashtags,_media = media;
  factory _Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String? petId;
@override@JsonKey() final  PostType postType;
@override final  String? caption;
@override final  String? location;
 final  List<AnimalType> _animalTypes;
@override@JsonKey() List<AnimalType> get animalTypes {
  if (_animalTypes is EqualUnmodifiableListView) return _animalTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_animalTypes);
}

 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override@JsonKey() final  bool isArchived;
@override final  DateTime? expiresAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
// joined
@override final  String? username;
@override final  String? displayName;
@override final  String? authorAvatarUrl;
 final  List<PostMedia> _media;
@override@JsonKey() List<PostMedia> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

@override@JsonKey() final  int likesCount;
@override@JsonKey() final  int commentsCount;
@override@JsonKey() final  int savesCount;
@override@JsonKey() final  bool isLikedByMe;
@override@JsonKey() final  bool isSavedByMe;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.petId, petId) || other.petId == petId)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._animalTypes, _animalTypes)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl)&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.savesCount, savesCount) || other.savesCount == savesCount)&&(identical(other.isLikedByMe, isLikedByMe) || other.isLikedByMe == isLikedByMe)&&(identical(other.isSavedByMe, isSavedByMe) || other.isSavedByMe == isSavedByMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,petId,postType,caption,location,const DeepCollectionEquality().hash(_animalTypes),const DeepCollectionEquality().hash(_hashtags),isArchived,expiresAt,createdAt,updatedAt,username,displayName,authorAvatarUrl,const DeepCollectionEquality().hash(_media),likesCount,commentsCount,savesCount,isLikedByMe,isSavedByMe]);

@override
String toString() {
  return 'Post(id: $id, userId: $userId, petId: $petId, postType: $postType, caption: $caption, location: $location, animalTypes: $animalTypes, hashtags: $hashtags, isArchived: $isArchived, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, username: $username, displayName: $displayName, authorAvatarUrl: $authorAvatarUrl, media: $media, likesCount: $likesCount, commentsCount: $commentsCount, savesCount: $savesCount, isLikedByMe: $isLikedByMe, isSavedByMe: $isSavedByMe)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String? petId, PostType postType, String? caption, String? location, List<AnimalType> animalTypes, List<String> hashtags, bool isArchived, DateTime? expiresAt, DateTime? createdAt, DateTime? updatedAt, String? username, String? displayName, String? authorAvatarUrl, List<PostMedia> media, int likesCount, int commentsCount, int savesCount, bool isLikedByMe, bool isSavedByMe
});




}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? petId = freezed,Object? postType = null,Object? caption = freezed,Object? location = freezed,Object? animalTypes = null,Object? hashtags = null,Object? isArchived = null,Object? expiresAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? username = freezed,Object? displayName = freezed,Object? authorAvatarUrl = freezed,Object? media = null,Object? likesCount = null,Object? commentsCount = null,Object? savesCount = null,Object? isLikedByMe = null,Object? isSavedByMe = null,}) {
  return _then(_Post(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,petId: freezed == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as String?,postType: null == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,animalTypes: null == animalTypes ? _self._animalTypes : animalTypes // ignore: cast_nullable_to_non_nullable
as List<AnimalType>,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<PostMedia>,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,savesCount: null == savesCount ? _self.savesCount : savesCount // ignore: cast_nullable_to_non_nullable
as int,isLikedByMe: null == isLikedByMe ? _self.isLikedByMe : isLikedByMe // ignore: cast_nullable_to_non_nullable
as bool,isSavedByMe: null == isSavedByMe ? _self.isSavedByMe : isSavedByMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PostComment {

 String get id; String get postId; String get userId; String? get parentId; String get body; DateTime? get createdAt; DateTime? get updatedAt;// joined
 String? get username; String? get authorAvatarUrl;
/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCommentCopyWith<PostComment> get copyWith => _$PostCommentCopyWithImpl<PostComment>(this as PostComment, _$identity);

  /// Serializes this PostComment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostComment&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,parentId,body,createdAt,updatedAt,username,authorAvatarUrl);

@override
String toString() {
  return 'PostComment(id: $id, postId: $postId, userId: $userId, parentId: $parentId, body: $body, createdAt: $createdAt, updatedAt: $updatedAt, username: $username, authorAvatarUrl: $authorAvatarUrl)';
}


}

/// @nodoc
abstract mixin class $PostCommentCopyWith<$Res>  {
  factory $PostCommentCopyWith(PostComment value, $Res Function(PostComment) _then) = _$PostCommentCopyWithImpl;
@useResult
$Res call({
 String id, String postId, String userId, String? parentId, String body, DateTime? createdAt, DateTime? updatedAt, String? username, String? authorAvatarUrl
});




}
/// @nodoc
class _$PostCommentCopyWithImpl<$Res>
    implements $PostCommentCopyWith<$Res> {
  _$PostCommentCopyWithImpl(this._self, this._then);

  final PostComment _self;
  final $Res Function(PostComment) _then;

/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? parentId = freezed,Object? body = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? username = freezed,Object? authorAvatarUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostComment].
extension PostCommentPatterns on PostComment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostComment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostComment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostComment value)  $default,){
final _that = this;
switch (_that) {
case _PostComment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostComment value)?  $default,){
final _that = this;
switch (_that) {
case _PostComment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String postId,  String userId,  String? parentId,  String body,  DateTime? createdAt,  DateTime? updatedAt,  String? username,  String? authorAvatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostComment() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.parentId,_that.body,_that.createdAt,_that.updatedAt,_that.username,_that.authorAvatarUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String postId,  String userId,  String? parentId,  String body,  DateTime? createdAt,  DateTime? updatedAt,  String? username,  String? authorAvatarUrl)  $default,) {final _that = this;
switch (_that) {
case _PostComment():
return $default(_that.id,_that.postId,_that.userId,_that.parentId,_that.body,_that.createdAt,_that.updatedAt,_that.username,_that.authorAvatarUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String postId,  String userId,  String? parentId,  String body,  DateTime? createdAt,  DateTime? updatedAt,  String? username,  String? authorAvatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _PostComment() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.parentId,_that.body,_that.createdAt,_that.updatedAt,_that.username,_that.authorAvatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostComment implements PostComment {
  const _PostComment({required this.id, required this.postId, required this.userId, this.parentId, required this.body, this.createdAt, this.updatedAt, this.username, this.authorAvatarUrl});
  factory _PostComment.fromJson(Map<String, dynamic> json) => _$PostCommentFromJson(json);

@override final  String id;
@override final  String postId;
@override final  String userId;
@override final  String? parentId;
@override final  String body;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
// joined
@override final  String? username;
@override final  String? authorAvatarUrl;

/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCommentCopyWith<_PostComment> get copyWith => __$PostCommentCopyWithImpl<_PostComment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostCommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostComment&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,parentId,body,createdAt,updatedAt,username,authorAvatarUrl);

@override
String toString() {
  return 'PostComment(id: $id, postId: $postId, userId: $userId, parentId: $parentId, body: $body, createdAt: $createdAt, updatedAt: $updatedAt, username: $username, authorAvatarUrl: $authorAvatarUrl)';
}


}

/// @nodoc
abstract mixin class _$PostCommentCopyWith<$Res> implements $PostCommentCopyWith<$Res> {
  factory _$PostCommentCopyWith(_PostComment value, $Res Function(_PostComment) _then) = __$PostCommentCopyWithImpl;
@override @useResult
$Res call({
 String id, String postId, String userId, String? parentId, String body, DateTime? createdAt, DateTime? updatedAt, String? username, String? authorAvatarUrl
});




}
/// @nodoc
class __$PostCommentCopyWithImpl<$Res>
    implements _$PostCommentCopyWith<$Res> {
  __$PostCommentCopyWithImpl(this._self, this._then);

  final _PostComment _self;
  final $Res Function(_PostComment) _then;

/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? parentId = freezed,Object? body = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? username = freezed,Object? authorAvatarUrl = freezed,}) {
  return _then(_PostComment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

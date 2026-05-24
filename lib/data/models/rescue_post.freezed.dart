// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rescue_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RescuePost {

 String get id; String get posterId; String get title; String? get description; AnimalType? get animalType; RescueUrgency get urgency; RescueStatus get status; double? get latitude; double? get longitude; String? get location; DateTime? get createdAt; DateTime? get updatedAt;// joined
 List<String> get imageUrls; String? get posterUsername; String? get posterAvatarUrl; List<RescueUpdate> get updates; int get volunteerCount; bool get isVolunteering;
/// Create a copy of RescuePost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescuePostCopyWith<RescuePost> get copyWith => _$RescuePostCopyWithImpl<RescuePost>(this as RescuePost, _$identity);

  /// Serializes this RescuePost to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescuePost&&(identical(other.id, id) || other.id == id)&&(identical(other.posterId, posterId) || other.posterId == posterId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.animalType, animalType) || other.animalType == animalType)&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.posterUsername, posterUsername) || other.posterUsername == posterUsername)&&(identical(other.posterAvatarUrl, posterAvatarUrl) || other.posterAvatarUrl == posterAvatarUrl)&&const DeepCollectionEquality().equals(other.updates, updates)&&(identical(other.volunteerCount, volunteerCount) || other.volunteerCount == volunteerCount)&&(identical(other.isVolunteering, isVolunteering) || other.isVolunteering == isVolunteering));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,posterId,title,description,animalType,urgency,status,latitude,longitude,location,createdAt,updatedAt,const DeepCollectionEquality().hash(imageUrls),posterUsername,posterAvatarUrl,const DeepCollectionEquality().hash(updates),volunteerCount,isVolunteering);

@override
String toString() {
  return 'RescuePost(id: $id, posterId: $posterId, title: $title, description: $description, animalType: $animalType, urgency: $urgency, status: $status, latitude: $latitude, longitude: $longitude, location: $location, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, posterUsername: $posterUsername, posterAvatarUrl: $posterAvatarUrl, updates: $updates, volunteerCount: $volunteerCount, isVolunteering: $isVolunteering)';
}


}

/// @nodoc
abstract mixin class $RescuePostCopyWith<$Res>  {
  factory $RescuePostCopyWith(RescuePost value, $Res Function(RescuePost) _then) = _$RescuePostCopyWithImpl;
@useResult
$Res call({
 String id, String posterId, String title, String? description, AnimalType? animalType, RescueUrgency urgency, RescueStatus status, double? latitude, double? longitude, String? location, DateTime? createdAt, DateTime? updatedAt, List<String> imageUrls, String? posterUsername, String? posterAvatarUrl, List<RescueUpdate> updates, int volunteerCount, bool isVolunteering
});




}
/// @nodoc
class _$RescuePostCopyWithImpl<$Res>
    implements $RescuePostCopyWith<$Res> {
  _$RescuePostCopyWithImpl(this._self, this._then);

  final RescuePost _self;
  final $Res Function(RescuePost) _then;

/// Create a copy of RescuePost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? posterId = null,Object? title = null,Object? description = freezed,Object? animalType = freezed,Object? urgency = null,Object? status = null,Object? latitude = freezed,Object? longitude = freezed,Object? location = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrls = null,Object? posterUsername = freezed,Object? posterAvatarUrl = freezed,Object? updates = null,Object? volunteerCount = null,Object? isVolunteering = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,animalType: freezed == animalType ? _self.animalType : animalType // ignore: cast_nullable_to_non_nullable
as AnimalType?,urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as RescueUrgency,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RescueStatus,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,posterUsername: freezed == posterUsername ? _self.posterUsername : posterUsername // ignore: cast_nullable_to_non_nullable
as String?,posterAvatarUrl: freezed == posterAvatarUrl ? _self.posterAvatarUrl : posterAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,updates: null == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as List<RescueUpdate>,volunteerCount: null == volunteerCount ? _self.volunteerCount : volunteerCount // ignore: cast_nullable_to_non_nullable
as int,isVolunteering: null == isVolunteering ? _self.isVolunteering : isVolunteering // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RescuePost].
extension RescuePostPatterns on RescuePost {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RescuePost value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RescuePost() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RescuePost value)  $default,){
final _that = this;
switch (_that) {
case _RescuePost():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RescuePost value)?  $default,){
final _that = this;
switch (_that) {
case _RescuePost() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String posterId,  String title,  String? description,  AnimalType? animalType,  RescueUrgency urgency,  RescueStatus status,  double? latitude,  double? longitude,  String? location,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? posterUsername,  String? posterAvatarUrl,  List<RescueUpdate> updates,  int volunteerCount,  bool isVolunteering)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RescuePost() when $default != null:
return $default(_that.id,_that.posterId,_that.title,_that.description,_that.animalType,_that.urgency,_that.status,_that.latitude,_that.longitude,_that.location,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.posterUsername,_that.posterAvatarUrl,_that.updates,_that.volunteerCount,_that.isVolunteering);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String posterId,  String title,  String? description,  AnimalType? animalType,  RescueUrgency urgency,  RescueStatus status,  double? latitude,  double? longitude,  String? location,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? posterUsername,  String? posterAvatarUrl,  List<RescueUpdate> updates,  int volunteerCount,  bool isVolunteering)  $default,) {final _that = this;
switch (_that) {
case _RescuePost():
return $default(_that.id,_that.posterId,_that.title,_that.description,_that.animalType,_that.urgency,_that.status,_that.latitude,_that.longitude,_that.location,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.posterUsername,_that.posterAvatarUrl,_that.updates,_that.volunteerCount,_that.isVolunteering);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String posterId,  String title,  String? description,  AnimalType? animalType,  RescueUrgency urgency,  RescueStatus status,  double? latitude,  double? longitude,  String? location,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? posterUsername,  String? posterAvatarUrl,  List<RescueUpdate> updates,  int volunteerCount,  bool isVolunteering)?  $default,) {final _that = this;
switch (_that) {
case _RescuePost() when $default != null:
return $default(_that.id,_that.posterId,_that.title,_that.description,_that.animalType,_that.urgency,_that.status,_that.latitude,_that.longitude,_that.location,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.posterUsername,_that.posterAvatarUrl,_that.updates,_that.volunteerCount,_that.isVolunteering);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RescuePost implements RescuePost {
  const _RescuePost({required this.id, required this.posterId, required this.title, this.description, this.animalType, this.urgency = RescueUrgency.needsHelp, this.status = RescueStatus.open, this.latitude, this.longitude, this.location, this.createdAt, this.updatedAt, final  List<String> imageUrls = const [], this.posterUsername, this.posterAvatarUrl, final  List<RescueUpdate> updates = const [], this.volunteerCount = 0, this.isVolunteering = false}): _imageUrls = imageUrls,_updates = updates;
  factory _RescuePost.fromJson(Map<String, dynamic> json) => _$RescuePostFromJson(json);

@override final  String id;
@override final  String posterId;
@override final  String title;
@override final  String? description;
@override final  AnimalType? animalType;
@override@JsonKey() final  RescueUrgency urgency;
@override@JsonKey() final  RescueStatus status;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? location;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
// joined
 final  List<String> _imageUrls;
// joined
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override final  String? posterUsername;
@override final  String? posterAvatarUrl;
 final  List<RescueUpdate> _updates;
@override@JsonKey() List<RescueUpdate> get updates {
  if (_updates is EqualUnmodifiableListView) return _updates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_updates);
}

@override@JsonKey() final  int volunteerCount;
@override@JsonKey() final  bool isVolunteering;

/// Create a copy of RescuePost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RescuePostCopyWith<_RescuePost> get copyWith => __$RescuePostCopyWithImpl<_RescuePost>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RescuePostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RescuePost&&(identical(other.id, id) || other.id == id)&&(identical(other.posterId, posterId) || other.posterId == posterId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.animalType, animalType) || other.animalType == animalType)&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.posterUsername, posterUsername) || other.posterUsername == posterUsername)&&(identical(other.posterAvatarUrl, posterAvatarUrl) || other.posterAvatarUrl == posterAvatarUrl)&&const DeepCollectionEquality().equals(other._updates, _updates)&&(identical(other.volunteerCount, volunteerCount) || other.volunteerCount == volunteerCount)&&(identical(other.isVolunteering, isVolunteering) || other.isVolunteering == isVolunteering));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,posterId,title,description,animalType,urgency,status,latitude,longitude,location,createdAt,updatedAt,const DeepCollectionEquality().hash(_imageUrls),posterUsername,posterAvatarUrl,const DeepCollectionEquality().hash(_updates),volunteerCount,isVolunteering);

@override
String toString() {
  return 'RescuePost(id: $id, posterId: $posterId, title: $title, description: $description, animalType: $animalType, urgency: $urgency, status: $status, latitude: $latitude, longitude: $longitude, location: $location, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, posterUsername: $posterUsername, posterAvatarUrl: $posterAvatarUrl, updates: $updates, volunteerCount: $volunteerCount, isVolunteering: $isVolunteering)';
}


}

/// @nodoc
abstract mixin class _$RescuePostCopyWith<$Res> implements $RescuePostCopyWith<$Res> {
  factory _$RescuePostCopyWith(_RescuePost value, $Res Function(_RescuePost) _then) = __$RescuePostCopyWithImpl;
@override @useResult
$Res call({
 String id, String posterId, String title, String? description, AnimalType? animalType, RescueUrgency urgency, RescueStatus status, double? latitude, double? longitude, String? location, DateTime? createdAt, DateTime? updatedAt, List<String> imageUrls, String? posterUsername, String? posterAvatarUrl, List<RescueUpdate> updates, int volunteerCount, bool isVolunteering
});




}
/// @nodoc
class __$RescuePostCopyWithImpl<$Res>
    implements _$RescuePostCopyWith<$Res> {
  __$RescuePostCopyWithImpl(this._self, this._then);

  final _RescuePost _self;
  final $Res Function(_RescuePost) _then;

/// Create a copy of RescuePost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? posterId = null,Object? title = null,Object? description = freezed,Object? animalType = freezed,Object? urgency = null,Object? status = null,Object? latitude = freezed,Object? longitude = freezed,Object? location = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrls = null,Object? posterUsername = freezed,Object? posterAvatarUrl = freezed,Object? updates = null,Object? volunteerCount = null,Object? isVolunteering = null,}) {
  return _then(_RescuePost(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,animalType: freezed == animalType ? _self.animalType : animalType // ignore: cast_nullable_to_non_nullable
as AnimalType?,urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as RescueUrgency,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RescueStatus,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,posterUsername: freezed == posterUsername ? _self.posterUsername : posterUsername // ignore: cast_nullable_to_non_nullable
as String?,posterAvatarUrl: freezed == posterAvatarUrl ? _self.posterAvatarUrl : posterAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,updates: null == updates ? _self._updates : updates // ignore: cast_nullable_to_non_nullable
as List<RescueUpdate>,volunteerCount: null == volunteerCount ? _self.volunteerCount : volunteerCount // ignore: cast_nullable_to_non_nullable
as int,isVolunteering: null == isVolunteering ? _self.isVolunteering : isVolunteering // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$RescueUpdate {

 String get id; String get postId; String get authorId; String get body; RescueStatus? get newStatus; DateTime? get createdAt;// joined
 String? get authorUsername; String? get authorAvatarUrl;
/// Create a copy of RescueUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescueUpdateCopyWith<RescueUpdate> get copyWith => _$RescueUpdateCopyWithImpl<RescueUpdate>(this as RescueUpdate, _$identity);

  /// Serializes this RescueUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescueUpdate&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.body, body) || other.body == body)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,authorId,body,newStatus,createdAt,authorUsername,authorAvatarUrl);

@override
String toString() {
  return 'RescueUpdate(id: $id, postId: $postId, authorId: $authorId, body: $body, newStatus: $newStatus, createdAt: $createdAt, authorUsername: $authorUsername, authorAvatarUrl: $authorAvatarUrl)';
}


}

/// @nodoc
abstract mixin class $RescueUpdateCopyWith<$Res>  {
  factory $RescueUpdateCopyWith(RescueUpdate value, $Res Function(RescueUpdate) _then) = _$RescueUpdateCopyWithImpl;
@useResult
$Res call({
 String id, String postId, String authorId, String body, RescueStatus? newStatus, DateTime? createdAt, String? authorUsername, String? authorAvatarUrl
});




}
/// @nodoc
class _$RescueUpdateCopyWithImpl<$Res>
    implements $RescueUpdateCopyWith<$Res> {
  _$RescueUpdateCopyWithImpl(this._self, this._then);

  final RescueUpdate _self;
  final $Res Function(RescueUpdate) _then;

/// Create a copy of RescueUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? postId = null,Object? authorId = null,Object? body = null,Object? newStatus = freezed,Object? createdAt = freezed,Object? authorUsername = freezed,Object? authorAvatarUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as RescueStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,authorUsername: freezed == authorUsername ? _self.authorUsername : authorUsername // ignore: cast_nullable_to_non_nullable
as String?,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RescueUpdate].
extension RescueUpdatePatterns on RescueUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RescueUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RescueUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RescueUpdate value)  $default,){
final _that = this;
switch (_that) {
case _RescueUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RescueUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _RescueUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String postId,  String authorId,  String body,  RescueStatus? newStatus,  DateTime? createdAt,  String? authorUsername,  String? authorAvatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RescueUpdate() when $default != null:
return $default(_that.id,_that.postId,_that.authorId,_that.body,_that.newStatus,_that.createdAt,_that.authorUsername,_that.authorAvatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String postId,  String authorId,  String body,  RescueStatus? newStatus,  DateTime? createdAt,  String? authorUsername,  String? authorAvatarUrl)  $default,) {final _that = this;
switch (_that) {
case _RescueUpdate():
return $default(_that.id,_that.postId,_that.authorId,_that.body,_that.newStatus,_that.createdAt,_that.authorUsername,_that.authorAvatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String postId,  String authorId,  String body,  RescueStatus? newStatus,  DateTime? createdAt,  String? authorUsername,  String? authorAvatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _RescueUpdate() when $default != null:
return $default(_that.id,_that.postId,_that.authorId,_that.body,_that.newStatus,_that.createdAt,_that.authorUsername,_that.authorAvatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RescueUpdate implements RescueUpdate {
  const _RescueUpdate({required this.id, required this.postId, required this.authorId, required this.body, this.newStatus, this.createdAt, this.authorUsername, this.authorAvatarUrl});
  factory _RescueUpdate.fromJson(Map<String, dynamic> json) => _$RescueUpdateFromJson(json);

@override final  String id;
@override final  String postId;
@override final  String authorId;
@override final  String body;
@override final  RescueStatus? newStatus;
@override final  DateTime? createdAt;
// joined
@override final  String? authorUsername;
@override final  String? authorAvatarUrl;

/// Create a copy of RescueUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RescueUpdateCopyWith<_RescueUpdate> get copyWith => __$RescueUpdateCopyWithImpl<_RescueUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RescueUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RescueUpdate&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.body, body) || other.body == body)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.authorUsername, authorUsername) || other.authorUsername == authorUsername)&&(identical(other.authorAvatarUrl, authorAvatarUrl) || other.authorAvatarUrl == authorAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,authorId,body,newStatus,createdAt,authorUsername,authorAvatarUrl);

@override
String toString() {
  return 'RescueUpdate(id: $id, postId: $postId, authorId: $authorId, body: $body, newStatus: $newStatus, createdAt: $createdAt, authorUsername: $authorUsername, authorAvatarUrl: $authorAvatarUrl)';
}


}

/// @nodoc
abstract mixin class _$RescueUpdateCopyWith<$Res> implements $RescueUpdateCopyWith<$Res> {
  factory _$RescueUpdateCopyWith(_RescueUpdate value, $Res Function(_RescueUpdate) _then) = __$RescueUpdateCopyWithImpl;
@override @useResult
$Res call({
 String id, String postId, String authorId, String body, RescueStatus? newStatus, DateTime? createdAt, String? authorUsername, String? authorAvatarUrl
});




}
/// @nodoc
class __$RescueUpdateCopyWithImpl<$Res>
    implements _$RescueUpdateCopyWith<$Res> {
  __$RescueUpdateCopyWithImpl(this._self, this._then);

  final _RescueUpdate _self;
  final $Res Function(_RescueUpdate) _then;

/// Create a copy of RescueUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? postId = null,Object? authorId = null,Object? body = null,Object? newStatus = freezed,Object? createdAt = freezed,Object? authorUsername = freezed,Object? authorAvatarUrl = freezed,}) {
  return _then(_RescueUpdate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as RescueStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,authorUsername: freezed == authorUsername ? _self.authorUsername : authorUsername // ignore: cast_nullable_to_non_nullable
as String?,authorAvatarUrl: freezed == authorAvatarUrl ? _self.authorAvatarUrl : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

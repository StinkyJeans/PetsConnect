// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PetProfile {

 String get id; String get ownerId; String get name; AnimalType get animalType; String? get breed; int? get ageYears; int? get ageMonths; PetGender get gender; PetSize? get size; String? get bio; String? get avatarUrl; bool get isPublic; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of PetProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetProfileCopyWith<PetProfile> get copyWith => _$PetProfileCopyWithImpl<PetProfile>(this as PetProfile, _$identity);

  /// Serializes this PetProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.animalType, animalType) || other.animalType == animalType)&&(identical(other.breed, breed) || other.breed == breed)&&(identical(other.ageYears, ageYears) || other.ageYears == ageYears)&&(identical(other.ageMonths, ageMonths) || other.ageMonths == ageMonths)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerId,name,animalType,breed,ageYears,ageMonths,gender,size,bio,avatarUrl,isPublic,createdAt,updatedAt);

@override
String toString() {
  return 'PetProfile(id: $id, ownerId: $ownerId, name: $name, animalType: $animalType, breed: $breed, ageYears: $ageYears, ageMonths: $ageMonths, gender: $gender, size: $size, bio: $bio, avatarUrl: $avatarUrl, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PetProfileCopyWith<$Res>  {
  factory $PetProfileCopyWith(PetProfile value, $Res Function(PetProfile) _then) = _$PetProfileCopyWithImpl;
@useResult
$Res call({
 String id, String ownerId, String name, AnimalType animalType, String? breed, int? ageYears, int? ageMonths, PetGender gender, PetSize? size, String? bio, String? avatarUrl, bool isPublic, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$PetProfileCopyWithImpl<$Res>
    implements $PetProfileCopyWith<$Res> {
  _$PetProfileCopyWithImpl(this._self, this._then);

  final PetProfile _self;
  final $Res Function(PetProfile) _then;

/// Create a copy of PetProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ownerId = null,Object? name = null,Object? animalType = null,Object? breed = freezed,Object? ageYears = freezed,Object? ageMonths = freezed,Object? gender = null,Object? size = freezed,Object? bio = freezed,Object? avatarUrl = freezed,Object? isPublic = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,animalType: null == animalType ? _self.animalType : animalType // ignore: cast_nullable_to_non_nullable
as AnimalType,breed: freezed == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as String?,ageYears: freezed == ageYears ? _self.ageYears : ageYears // ignore: cast_nullable_to_non_nullable
as int?,ageMonths: freezed == ageMonths ? _self.ageMonths : ageMonths // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as PetGender,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as PetSize?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PetProfile].
extension PetProfilePatterns on PetProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PetProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PetProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PetProfile value)  $default,){
final _that = this;
switch (_that) {
case _PetProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PetProfile value)?  $default,){
final _that = this;
switch (_that) {
case _PetProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ownerId,  String name,  AnimalType animalType,  String? breed,  int? ageYears,  int? ageMonths,  PetGender gender,  PetSize? size,  String? bio,  String? avatarUrl,  bool isPublic,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PetProfile() when $default != null:
return $default(_that.id,_that.ownerId,_that.name,_that.animalType,_that.breed,_that.ageYears,_that.ageMonths,_that.gender,_that.size,_that.bio,_that.avatarUrl,_that.isPublic,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ownerId,  String name,  AnimalType animalType,  String? breed,  int? ageYears,  int? ageMonths,  PetGender gender,  PetSize? size,  String? bio,  String? avatarUrl,  bool isPublic,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PetProfile():
return $default(_that.id,_that.ownerId,_that.name,_that.animalType,_that.breed,_that.ageYears,_that.ageMonths,_that.gender,_that.size,_that.bio,_that.avatarUrl,_that.isPublic,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ownerId,  String name,  AnimalType animalType,  String? breed,  int? ageYears,  int? ageMonths,  PetGender gender,  PetSize? size,  String? bio,  String? avatarUrl,  bool isPublic,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PetProfile() when $default != null:
return $default(_that.id,_that.ownerId,_that.name,_that.animalType,_that.breed,_that.ageYears,_that.ageMonths,_that.gender,_that.size,_that.bio,_that.avatarUrl,_that.isPublic,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PetProfile implements PetProfile {
  const _PetProfile({required this.id, required this.ownerId, required this.name, required this.animalType, this.breed, this.ageYears, this.ageMonths, this.gender = PetGender.unknown, this.size, this.bio, this.avatarUrl, this.isPublic = true, this.createdAt, this.updatedAt});
  factory _PetProfile.fromJson(Map<String, dynamic> json) => _$PetProfileFromJson(json);

@override final  String id;
@override final  String ownerId;
@override final  String name;
@override final  AnimalType animalType;
@override final  String? breed;
@override final  int? ageYears;
@override final  int? ageMonths;
@override@JsonKey() final  PetGender gender;
@override final  PetSize? size;
@override final  String? bio;
@override final  String? avatarUrl;
@override@JsonKey() final  bool isPublic;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of PetProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetProfileCopyWith<_PetProfile> get copyWith => __$PetProfileCopyWithImpl<_PetProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PetProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.animalType, animalType) || other.animalType == animalType)&&(identical(other.breed, breed) || other.breed == breed)&&(identical(other.ageYears, ageYears) || other.ageYears == ageYears)&&(identical(other.ageMonths, ageMonths) || other.ageMonths == ageMonths)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerId,name,animalType,breed,ageYears,ageMonths,gender,size,bio,avatarUrl,isPublic,createdAt,updatedAt);

@override
String toString() {
  return 'PetProfile(id: $id, ownerId: $ownerId, name: $name, animalType: $animalType, breed: $breed, ageYears: $ageYears, ageMonths: $ageMonths, gender: $gender, size: $size, bio: $bio, avatarUrl: $avatarUrl, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PetProfileCopyWith<$Res> implements $PetProfileCopyWith<$Res> {
  factory _$PetProfileCopyWith(_PetProfile value, $Res Function(_PetProfile) _then) = __$PetProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String ownerId, String name, AnimalType animalType, String? breed, int? ageYears, int? ageMonths, PetGender gender, PetSize? size, String? bio, String? avatarUrl, bool isPublic, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$PetProfileCopyWithImpl<$Res>
    implements _$PetProfileCopyWith<$Res> {
  __$PetProfileCopyWithImpl(this._self, this._then);

  final _PetProfile _self;
  final $Res Function(_PetProfile) _then;

/// Create a copy of PetProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ownerId = null,Object? name = null,Object? animalType = null,Object? breed = freezed,Object? ageYears = freezed,Object? ageMonths = freezed,Object? gender = null,Object? size = freezed,Object? bio = freezed,Object? avatarUrl = freezed,Object? isPublic = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PetProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,animalType: null == animalType ? _self.animalType : animalType // ignore: cast_nullable_to_non_nullable
as AnimalType,breed: freezed == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as String?,ageYears: freezed == ageYears ? _self.ageYears : ageYears // ignore: cast_nullable_to_non_nullable
as int?,ageMonths: freezed == ageMonths ? _self.ageMonths : ageMonths // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as PetGender,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as PetSize?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on

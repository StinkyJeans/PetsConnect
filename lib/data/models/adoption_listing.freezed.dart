// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adoption_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdoptionListing {

 String get id; String get posterId; String get petName; AnimalType get animalType; String? get breed; int? get ageYears; int? get ageMonths; PetGender get gender; PetSize? get size; String? get description; String? get healthNotes; bool get isVaccinated; bool get isNeutered; String? get location; AdoptionStatus get status; DateTime? get createdAt; DateTime? get updatedAt;// joined
 List<String> get imageUrls; String? get posterUsername; String? get posterAvatarUrl; bool get isSavedByMe;
/// Create a copy of AdoptionListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdoptionListingCopyWith<AdoptionListing> get copyWith => _$AdoptionListingCopyWithImpl<AdoptionListing>(this as AdoptionListing, _$identity);

  /// Serializes this AdoptionListing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdoptionListing&&(identical(other.id, id) || other.id == id)&&(identical(other.posterId, posterId) || other.posterId == posterId)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.animalType, animalType) || other.animalType == animalType)&&(identical(other.breed, breed) || other.breed == breed)&&(identical(other.ageYears, ageYears) || other.ageYears == ageYears)&&(identical(other.ageMonths, ageMonths) || other.ageMonths == ageMonths)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&(identical(other.description, description) || other.description == description)&&(identical(other.healthNotes, healthNotes) || other.healthNotes == healthNotes)&&(identical(other.isVaccinated, isVaccinated) || other.isVaccinated == isVaccinated)&&(identical(other.isNeutered, isNeutered) || other.isNeutered == isNeutered)&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.posterUsername, posterUsername) || other.posterUsername == posterUsername)&&(identical(other.posterAvatarUrl, posterAvatarUrl) || other.posterAvatarUrl == posterAvatarUrl)&&(identical(other.isSavedByMe, isSavedByMe) || other.isSavedByMe == isSavedByMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,posterId,petName,animalType,breed,ageYears,ageMonths,gender,size,description,healthNotes,isVaccinated,isNeutered,location,status,createdAt,updatedAt,const DeepCollectionEquality().hash(imageUrls),posterUsername,posterAvatarUrl,isSavedByMe]);

@override
String toString() {
  return 'AdoptionListing(id: $id, posterId: $posterId, petName: $petName, animalType: $animalType, breed: $breed, ageYears: $ageYears, ageMonths: $ageMonths, gender: $gender, size: $size, description: $description, healthNotes: $healthNotes, isVaccinated: $isVaccinated, isNeutered: $isNeutered, location: $location, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, posterUsername: $posterUsername, posterAvatarUrl: $posterAvatarUrl, isSavedByMe: $isSavedByMe)';
}


}

/// @nodoc
abstract mixin class $AdoptionListingCopyWith<$Res>  {
  factory $AdoptionListingCopyWith(AdoptionListing value, $Res Function(AdoptionListing) _then) = _$AdoptionListingCopyWithImpl;
@useResult
$Res call({
 String id, String posterId, String petName, AnimalType animalType, String? breed, int? ageYears, int? ageMonths, PetGender gender, PetSize? size, String? description, String? healthNotes, bool isVaccinated, bool isNeutered, String? location, AdoptionStatus status, DateTime? createdAt, DateTime? updatedAt, List<String> imageUrls, String? posterUsername, String? posterAvatarUrl, bool isSavedByMe
});




}
/// @nodoc
class _$AdoptionListingCopyWithImpl<$Res>
    implements $AdoptionListingCopyWith<$Res> {
  _$AdoptionListingCopyWithImpl(this._self, this._then);

  final AdoptionListing _self;
  final $Res Function(AdoptionListing) _then;

/// Create a copy of AdoptionListing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? posterId = null,Object? petName = null,Object? animalType = null,Object? breed = freezed,Object? ageYears = freezed,Object? ageMonths = freezed,Object? gender = null,Object? size = freezed,Object? description = freezed,Object? healthNotes = freezed,Object? isVaccinated = null,Object? isNeutered = null,Object? location = freezed,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrls = null,Object? posterUsername = freezed,Object? posterAvatarUrl = freezed,Object? isSavedByMe = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as String,animalType: null == animalType ? _self.animalType : animalType // ignore: cast_nullable_to_non_nullable
as AnimalType,breed: freezed == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as String?,ageYears: freezed == ageYears ? _self.ageYears : ageYears // ignore: cast_nullable_to_non_nullable
as int?,ageMonths: freezed == ageMonths ? _self.ageMonths : ageMonths // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as PetGender,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as PetSize?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,healthNotes: freezed == healthNotes ? _self.healthNotes : healthNotes // ignore: cast_nullable_to_non_nullable
as String?,isVaccinated: null == isVaccinated ? _self.isVaccinated : isVaccinated // ignore: cast_nullable_to_non_nullable
as bool,isNeutered: null == isNeutered ? _self.isNeutered : isNeutered // ignore: cast_nullable_to_non_nullable
as bool,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdoptionStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,posterUsername: freezed == posterUsername ? _self.posterUsername : posterUsername // ignore: cast_nullable_to_non_nullable
as String?,posterAvatarUrl: freezed == posterAvatarUrl ? _self.posterAvatarUrl : posterAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isSavedByMe: null == isSavedByMe ? _self.isSavedByMe : isSavedByMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdoptionListing].
extension AdoptionListingPatterns on AdoptionListing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdoptionListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdoptionListing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdoptionListing value)  $default,){
final _that = this;
switch (_that) {
case _AdoptionListing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdoptionListing value)?  $default,){
final _that = this;
switch (_that) {
case _AdoptionListing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String posterId,  String petName,  AnimalType animalType,  String? breed,  int? ageYears,  int? ageMonths,  PetGender gender,  PetSize? size,  String? description,  String? healthNotes,  bool isVaccinated,  bool isNeutered,  String? location,  AdoptionStatus status,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? posterUsername,  String? posterAvatarUrl,  bool isSavedByMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdoptionListing() when $default != null:
return $default(_that.id,_that.posterId,_that.petName,_that.animalType,_that.breed,_that.ageYears,_that.ageMonths,_that.gender,_that.size,_that.description,_that.healthNotes,_that.isVaccinated,_that.isNeutered,_that.location,_that.status,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.posterUsername,_that.posterAvatarUrl,_that.isSavedByMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String posterId,  String petName,  AnimalType animalType,  String? breed,  int? ageYears,  int? ageMonths,  PetGender gender,  PetSize? size,  String? description,  String? healthNotes,  bool isVaccinated,  bool isNeutered,  String? location,  AdoptionStatus status,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? posterUsername,  String? posterAvatarUrl,  bool isSavedByMe)  $default,) {final _that = this;
switch (_that) {
case _AdoptionListing():
return $default(_that.id,_that.posterId,_that.petName,_that.animalType,_that.breed,_that.ageYears,_that.ageMonths,_that.gender,_that.size,_that.description,_that.healthNotes,_that.isVaccinated,_that.isNeutered,_that.location,_that.status,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.posterUsername,_that.posterAvatarUrl,_that.isSavedByMe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String posterId,  String petName,  AnimalType animalType,  String? breed,  int? ageYears,  int? ageMonths,  PetGender gender,  PetSize? size,  String? description,  String? healthNotes,  bool isVaccinated,  bool isNeutered,  String? location,  AdoptionStatus status,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? posterUsername,  String? posterAvatarUrl,  bool isSavedByMe)?  $default,) {final _that = this;
switch (_that) {
case _AdoptionListing() when $default != null:
return $default(_that.id,_that.posterId,_that.petName,_that.animalType,_that.breed,_that.ageYears,_that.ageMonths,_that.gender,_that.size,_that.description,_that.healthNotes,_that.isVaccinated,_that.isNeutered,_that.location,_that.status,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.posterUsername,_that.posterAvatarUrl,_that.isSavedByMe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdoptionListing implements AdoptionListing {
  const _AdoptionListing({required this.id, required this.posterId, required this.petName, required this.animalType, this.breed, this.ageYears, this.ageMonths, this.gender = PetGender.unknown, this.size, this.description, this.healthNotes, this.isVaccinated = false, this.isNeutered = false, this.location, this.status = AdoptionStatus.available, this.createdAt, this.updatedAt, final  List<String> imageUrls = const [], this.posterUsername, this.posterAvatarUrl, this.isSavedByMe = false}): _imageUrls = imageUrls;
  factory _AdoptionListing.fromJson(Map<String, dynamic> json) => _$AdoptionListingFromJson(json);

@override final  String id;
@override final  String posterId;
@override final  String petName;
@override final  AnimalType animalType;
@override final  String? breed;
@override final  int? ageYears;
@override final  int? ageMonths;
@override@JsonKey() final  PetGender gender;
@override final  PetSize? size;
@override final  String? description;
@override final  String? healthNotes;
@override@JsonKey() final  bool isVaccinated;
@override@JsonKey() final  bool isNeutered;
@override final  String? location;
@override@JsonKey() final  AdoptionStatus status;
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
@override@JsonKey() final  bool isSavedByMe;

/// Create a copy of AdoptionListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdoptionListingCopyWith<_AdoptionListing> get copyWith => __$AdoptionListingCopyWithImpl<_AdoptionListing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdoptionListingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdoptionListing&&(identical(other.id, id) || other.id == id)&&(identical(other.posterId, posterId) || other.posterId == posterId)&&(identical(other.petName, petName) || other.petName == petName)&&(identical(other.animalType, animalType) || other.animalType == animalType)&&(identical(other.breed, breed) || other.breed == breed)&&(identical(other.ageYears, ageYears) || other.ageYears == ageYears)&&(identical(other.ageMonths, ageMonths) || other.ageMonths == ageMonths)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&(identical(other.description, description) || other.description == description)&&(identical(other.healthNotes, healthNotes) || other.healthNotes == healthNotes)&&(identical(other.isVaccinated, isVaccinated) || other.isVaccinated == isVaccinated)&&(identical(other.isNeutered, isNeutered) || other.isNeutered == isNeutered)&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.posterUsername, posterUsername) || other.posterUsername == posterUsername)&&(identical(other.posterAvatarUrl, posterAvatarUrl) || other.posterAvatarUrl == posterAvatarUrl)&&(identical(other.isSavedByMe, isSavedByMe) || other.isSavedByMe == isSavedByMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,posterId,petName,animalType,breed,ageYears,ageMonths,gender,size,description,healthNotes,isVaccinated,isNeutered,location,status,createdAt,updatedAt,const DeepCollectionEquality().hash(_imageUrls),posterUsername,posterAvatarUrl,isSavedByMe]);

@override
String toString() {
  return 'AdoptionListing(id: $id, posterId: $posterId, petName: $petName, animalType: $animalType, breed: $breed, ageYears: $ageYears, ageMonths: $ageMonths, gender: $gender, size: $size, description: $description, healthNotes: $healthNotes, isVaccinated: $isVaccinated, isNeutered: $isNeutered, location: $location, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, posterUsername: $posterUsername, posterAvatarUrl: $posterAvatarUrl, isSavedByMe: $isSavedByMe)';
}


}

/// @nodoc
abstract mixin class _$AdoptionListingCopyWith<$Res> implements $AdoptionListingCopyWith<$Res> {
  factory _$AdoptionListingCopyWith(_AdoptionListing value, $Res Function(_AdoptionListing) _then) = __$AdoptionListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String posterId, String petName, AnimalType animalType, String? breed, int? ageYears, int? ageMonths, PetGender gender, PetSize? size, String? description, String? healthNotes, bool isVaccinated, bool isNeutered, String? location, AdoptionStatus status, DateTime? createdAt, DateTime? updatedAt, List<String> imageUrls, String? posterUsername, String? posterAvatarUrl, bool isSavedByMe
});




}
/// @nodoc
class __$AdoptionListingCopyWithImpl<$Res>
    implements _$AdoptionListingCopyWith<$Res> {
  __$AdoptionListingCopyWithImpl(this._self, this._then);

  final _AdoptionListing _self;
  final $Res Function(_AdoptionListing) _then;

/// Create a copy of AdoptionListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? posterId = null,Object? petName = null,Object? animalType = null,Object? breed = freezed,Object? ageYears = freezed,Object? ageMonths = freezed,Object? gender = null,Object? size = freezed,Object? description = freezed,Object? healthNotes = freezed,Object? isVaccinated = null,Object? isNeutered = null,Object? location = freezed,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrls = null,Object? posterUsername = freezed,Object? posterAvatarUrl = freezed,Object? isSavedByMe = null,}) {
  return _then(_AdoptionListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,posterId: null == posterId ? _self.posterId : posterId // ignore: cast_nullable_to_non_nullable
as String,petName: null == petName ? _self.petName : petName // ignore: cast_nullable_to_non_nullable
as String,animalType: null == animalType ? _self.animalType : animalType // ignore: cast_nullable_to_non_nullable
as AnimalType,breed: freezed == breed ? _self.breed : breed // ignore: cast_nullable_to_non_nullable
as String?,ageYears: freezed == ageYears ? _self.ageYears : ageYears // ignore: cast_nullable_to_non_nullable
as int?,ageMonths: freezed == ageMonths ? _self.ageMonths : ageMonths // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as PetGender,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as PetSize?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,healthNotes: freezed == healthNotes ? _self.healthNotes : healthNotes // ignore: cast_nullable_to_non_nullable
as String?,isVaccinated: null == isVaccinated ? _self.isVaccinated : isVaccinated // ignore: cast_nullable_to_non_nullable
as bool,isNeutered: null == isNeutered ? _self.isNeutered : isNeutered // ignore: cast_nullable_to_non_nullable
as bool,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdoptionStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,posterUsername: freezed == posterUsername ? _self.posterUsername : posterUsername // ignore: cast_nullable_to_non_nullable
as String?,posterAvatarUrl: freezed == posterAvatarUrl ? _self.posterAvatarUrl : posterAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isSavedByMe: null == isSavedByMe ? _self.isSavedByMe : isSavedByMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AdoptionRequest {

 String get id; String get listingId; String get applicantId; AdoptionRequestStatus get status; String? get message; String? get livingSituation; bool? get hasOtherPets; String? get experience; DateTime? get createdAt; DateTime? get updatedAt;// joined
 String? get applicantUsername; String? get applicantAvatarUrl;
/// Create a copy of AdoptionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdoptionRequestCopyWith<AdoptionRequest> get copyWith => _$AdoptionRequestCopyWithImpl<AdoptionRequest>(this as AdoptionRequest, _$identity);

  /// Serializes this AdoptionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdoptionRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.livingSituation, livingSituation) || other.livingSituation == livingSituation)&&(identical(other.hasOtherPets, hasOtherPets) || other.hasOtherPets == hasOtherPets)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.applicantUsername, applicantUsername) || other.applicantUsername == applicantUsername)&&(identical(other.applicantAvatarUrl, applicantAvatarUrl) || other.applicantAvatarUrl == applicantAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,applicantId,status,message,livingSituation,hasOtherPets,experience,createdAt,updatedAt,applicantUsername,applicantAvatarUrl);

@override
String toString() {
  return 'AdoptionRequest(id: $id, listingId: $listingId, applicantId: $applicantId, status: $status, message: $message, livingSituation: $livingSituation, hasOtherPets: $hasOtherPets, experience: $experience, createdAt: $createdAt, updatedAt: $updatedAt, applicantUsername: $applicantUsername, applicantAvatarUrl: $applicantAvatarUrl)';
}


}

/// @nodoc
abstract mixin class $AdoptionRequestCopyWith<$Res>  {
  factory $AdoptionRequestCopyWith(AdoptionRequest value, $Res Function(AdoptionRequest) _then) = _$AdoptionRequestCopyWithImpl;
@useResult
$Res call({
 String id, String listingId, String applicantId, AdoptionRequestStatus status, String? message, String? livingSituation, bool? hasOtherPets, String? experience, DateTime? createdAt, DateTime? updatedAt, String? applicantUsername, String? applicantAvatarUrl
});




}
/// @nodoc
class _$AdoptionRequestCopyWithImpl<$Res>
    implements $AdoptionRequestCopyWith<$Res> {
  _$AdoptionRequestCopyWithImpl(this._self, this._then);

  final AdoptionRequest _self;
  final $Res Function(AdoptionRequest) _then;

/// Create a copy of AdoptionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? applicantId = null,Object? status = null,Object? message = freezed,Object? livingSituation = freezed,Object? hasOtherPets = freezed,Object? experience = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? applicantUsername = freezed,Object? applicantAvatarUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,applicantId: null == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdoptionRequestStatus,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,livingSituation: freezed == livingSituation ? _self.livingSituation : livingSituation // ignore: cast_nullable_to_non_nullable
as String?,hasOtherPets: freezed == hasOtherPets ? _self.hasOtherPets : hasOtherPets // ignore: cast_nullable_to_non_nullable
as bool?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,applicantUsername: freezed == applicantUsername ? _self.applicantUsername : applicantUsername // ignore: cast_nullable_to_non_nullable
as String?,applicantAvatarUrl: freezed == applicantAvatarUrl ? _self.applicantAvatarUrl : applicantAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdoptionRequest].
extension AdoptionRequestPatterns on AdoptionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdoptionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdoptionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdoptionRequest value)  $default,){
final _that = this;
switch (_that) {
case _AdoptionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdoptionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AdoptionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String listingId,  String applicantId,  AdoptionRequestStatus status,  String? message,  String? livingSituation,  bool? hasOtherPets,  String? experience,  DateTime? createdAt,  DateTime? updatedAt,  String? applicantUsername,  String? applicantAvatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdoptionRequest() when $default != null:
return $default(_that.id,_that.listingId,_that.applicantId,_that.status,_that.message,_that.livingSituation,_that.hasOtherPets,_that.experience,_that.createdAt,_that.updatedAt,_that.applicantUsername,_that.applicantAvatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String listingId,  String applicantId,  AdoptionRequestStatus status,  String? message,  String? livingSituation,  bool? hasOtherPets,  String? experience,  DateTime? createdAt,  DateTime? updatedAt,  String? applicantUsername,  String? applicantAvatarUrl)  $default,) {final _that = this;
switch (_that) {
case _AdoptionRequest():
return $default(_that.id,_that.listingId,_that.applicantId,_that.status,_that.message,_that.livingSituation,_that.hasOtherPets,_that.experience,_that.createdAt,_that.updatedAt,_that.applicantUsername,_that.applicantAvatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String listingId,  String applicantId,  AdoptionRequestStatus status,  String? message,  String? livingSituation,  bool? hasOtherPets,  String? experience,  DateTime? createdAt,  DateTime? updatedAt,  String? applicantUsername,  String? applicantAvatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _AdoptionRequest() when $default != null:
return $default(_that.id,_that.listingId,_that.applicantId,_that.status,_that.message,_that.livingSituation,_that.hasOtherPets,_that.experience,_that.createdAt,_that.updatedAt,_that.applicantUsername,_that.applicantAvatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdoptionRequest implements AdoptionRequest {
  const _AdoptionRequest({required this.id, required this.listingId, required this.applicantId, this.status = AdoptionRequestStatus.pending, this.message, this.livingSituation, this.hasOtherPets, this.experience, this.createdAt, this.updatedAt, this.applicantUsername, this.applicantAvatarUrl});
  factory _AdoptionRequest.fromJson(Map<String, dynamic> json) => _$AdoptionRequestFromJson(json);

@override final  String id;
@override final  String listingId;
@override final  String applicantId;
@override@JsonKey() final  AdoptionRequestStatus status;
@override final  String? message;
@override final  String? livingSituation;
@override final  bool? hasOtherPets;
@override final  String? experience;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
// joined
@override final  String? applicantUsername;
@override final  String? applicantAvatarUrl;

/// Create a copy of AdoptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdoptionRequestCopyWith<_AdoptionRequest> get copyWith => __$AdoptionRequestCopyWithImpl<_AdoptionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdoptionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdoptionRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.livingSituation, livingSituation) || other.livingSituation == livingSituation)&&(identical(other.hasOtherPets, hasOtherPets) || other.hasOtherPets == hasOtherPets)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.applicantUsername, applicantUsername) || other.applicantUsername == applicantUsername)&&(identical(other.applicantAvatarUrl, applicantAvatarUrl) || other.applicantAvatarUrl == applicantAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,applicantId,status,message,livingSituation,hasOtherPets,experience,createdAt,updatedAt,applicantUsername,applicantAvatarUrl);

@override
String toString() {
  return 'AdoptionRequest(id: $id, listingId: $listingId, applicantId: $applicantId, status: $status, message: $message, livingSituation: $livingSituation, hasOtherPets: $hasOtherPets, experience: $experience, createdAt: $createdAt, updatedAt: $updatedAt, applicantUsername: $applicantUsername, applicantAvatarUrl: $applicantAvatarUrl)';
}


}

/// @nodoc
abstract mixin class _$AdoptionRequestCopyWith<$Res> implements $AdoptionRequestCopyWith<$Res> {
  factory _$AdoptionRequestCopyWith(_AdoptionRequest value, $Res Function(_AdoptionRequest) _then) = __$AdoptionRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String listingId, String applicantId, AdoptionRequestStatus status, String? message, String? livingSituation, bool? hasOtherPets, String? experience, DateTime? createdAt, DateTime? updatedAt, String? applicantUsername, String? applicantAvatarUrl
});




}
/// @nodoc
class __$AdoptionRequestCopyWithImpl<$Res>
    implements _$AdoptionRequestCopyWith<$Res> {
  __$AdoptionRequestCopyWithImpl(this._self, this._then);

  final _AdoptionRequest _self;
  final $Res Function(_AdoptionRequest) _then;

/// Create a copy of AdoptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? applicantId = null,Object? status = null,Object? message = freezed,Object? livingSituation = freezed,Object? hasOtherPets = freezed,Object? experience = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? applicantUsername = freezed,Object? applicantAvatarUrl = freezed,}) {
  return _then(_AdoptionRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,applicantId: null == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdoptionRequestStatus,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,livingSituation: freezed == livingSituation ? _self.livingSituation : livingSituation // ignore: cast_nullable_to_non_nullable
as String?,hasOtherPets: freezed == hasOtherPets ? _self.hasOtherPets : hasOtherPets // ignore: cast_nullable_to_non_nullable
as bool?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,applicantUsername: freezed == applicantUsername ? _self.applicantUsername : applicantUsername // ignore: cast_nullable_to_non_nullable
as String?,applicantAvatarUrl: freezed == applicantAvatarUrl ? _self.applicantAvatarUrl : applicantAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

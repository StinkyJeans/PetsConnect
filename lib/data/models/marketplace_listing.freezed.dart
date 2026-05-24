// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingCategory {

 String get id; String get name; String get slug; String? get iconName; int get sortOrder;
/// Create a copy of ListingCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingCategoryCopyWith<ListingCategory> get copyWith => _$ListingCategoryCopyWithImpl<ListingCategory>(this as ListingCategory, _$identity);

  /// Serializes this ListingCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.iconName, iconName) || other.iconName == iconName)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,iconName,sortOrder);

@override
String toString() {
  return 'ListingCategory(id: $id, name: $name, slug: $slug, iconName: $iconName, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ListingCategoryCopyWith<$Res>  {
  factory $ListingCategoryCopyWith(ListingCategory value, $Res Function(ListingCategory) _then) = _$ListingCategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String? iconName, int sortOrder
});




}
/// @nodoc
class _$ListingCategoryCopyWithImpl<$Res>
    implements $ListingCategoryCopyWith<$Res> {
  _$ListingCategoryCopyWithImpl(this._self, this._then);

  final ListingCategory _self;
  final $Res Function(ListingCategory) _then;

/// Create a copy of ListingCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? iconName = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,iconName: freezed == iconName ? _self.iconName : iconName // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingCategory].
extension ListingCategoryPatterns on ListingCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingCategory value)  $default,){
final _that = this;
switch (_that) {
case _ListingCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ListingCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? iconName,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.iconName,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? iconName,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ListingCategory():
return $default(_that.id,_that.name,_that.slug,_that.iconName,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String? iconName,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ListingCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.iconName,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingCategory implements ListingCategory {
  const _ListingCategory({required this.id, required this.name, required this.slug, this.iconName, this.sortOrder = 0});
  factory _ListingCategory.fromJson(Map<String, dynamic> json) => _$ListingCategoryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String? iconName;
@override@JsonKey() final  int sortOrder;

/// Create a copy of ListingCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingCategoryCopyWith<_ListingCategory> get copyWith => __$ListingCategoryCopyWithImpl<_ListingCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.iconName, iconName) || other.iconName == iconName)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,iconName,sortOrder);

@override
String toString() {
  return 'ListingCategory(id: $id, name: $name, slug: $slug, iconName: $iconName, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ListingCategoryCopyWith<$Res> implements $ListingCategoryCopyWith<$Res> {
  factory _$ListingCategoryCopyWith(_ListingCategory value, $Res Function(_ListingCategory) _then) = __$ListingCategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String? iconName, int sortOrder
});




}
/// @nodoc
class __$ListingCategoryCopyWithImpl<$Res>
    implements _$ListingCategoryCopyWith<$Res> {
  __$ListingCategoryCopyWithImpl(this._self, this._then);

  final _ListingCategory _self;
  final $Res Function(_ListingCategory) _then;

/// Create a copy of ListingCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? iconName = freezed,Object? sortOrder = null,}) {
  return _then(_ListingCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,iconName: freezed == iconName ? _self.iconName : iconName // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MarketplaceListing {

 String get id; String get sellerId; String? get categoryId; String get title; String? get description; double get price; String get currency; List<AnimalType> get animalTypes; ProductCondition? get condition; String? get location; ListingStatus get status; bool get isBoosted; DateTime? get boostUntil; int get views; DateTime? get createdAt; DateTime? get updatedAt;// joined
 List<String> get imageUrls; String? get sellerUsername; String? get sellerAvatarUrl; double get sellerRating; String? get categoryName;
/// Create a copy of MarketplaceListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceListingCopyWith<MarketplaceListing> get copyWith => _$MarketplaceListingCopyWithImpl<MarketplaceListing>(this as MarketplaceListing, _$identity);

  /// Serializes this MarketplaceListing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceListing&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.animalTypes, animalTypes)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status)&&(identical(other.isBoosted, isBoosted) || other.isBoosted == isBoosted)&&(identical(other.boostUntil, boostUntil) || other.boostUntil == boostUntil)&&(identical(other.views, views) || other.views == views)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.sellerUsername, sellerUsername) || other.sellerUsername == sellerUsername)&&(identical(other.sellerAvatarUrl, sellerAvatarUrl) || other.sellerAvatarUrl == sellerAvatarUrl)&&(identical(other.sellerRating, sellerRating) || other.sellerRating == sellerRating)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sellerId,categoryId,title,description,price,currency,const DeepCollectionEquality().hash(animalTypes),condition,location,status,isBoosted,boostUntil,views,createdAt,updatedAt,const DeepCollectionEquality().hash(imageUrls),sellerUsername,sellerAvatarUrl,sellerRating,categoryName]);

@override
String toString() {
  return 'MarketplaceListing(id: $id, sellerId: $sellerId, categoryId: $categoryId, title: $title, description: $description, price: $price, currency: $currency, animalTypes: $animalTypes, condition: $condition, location: $location, status: $status, isBoosted: $isBoosted, boostUntil: $boostUntil, views: $views, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, sellerUsername: $sellerUsername, sellerAvatarUrl: $sellerAvatarUrl, sellerRating: $sellerRating, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class $MarketplaceListingCopyWith<$Res>  {
  factory $MarketplaceListingCopyWith(MarketplaceListing value, $Res Function(MarketplaceListing) _then) = _$MarketplaceListingCopyWithImpl;
@useResult
$Res call({
 String id, String sellerId, String? categoryId, String title, String? description, double price, String currency, List<AnimalType> animalTypes, ProductCondition? condition, String? location, ListingStatus status, bool isBoosted, DateTime? boostUntil, int views, DateTime? createdAt, DateTime? updatedAt, List<String> imageUrls, String? sellerUsername, String? sellerAvatarUrl, double sellerRating, String? categoryName
});




}
/// @nodoc
class _$MarketplaceListingCopyWithImpl<$Res>
    implements $MarketplaceListingCopyWith<$Res> {
  _$MarketplaceListingCopyWithImpl(this._self, this._then);

  final MarketplaceListing _self;
  final $Res Function(MarketplaceListing) _then;

/// Create a copy of MarketplaceListing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sellerId = null,Object? categoryId = freezed,Object? title = null,Object? description = freezed,Object? price = null,Object? currency = null,Object? animalTypes = null,Object? condition = freezed,Object? location = freezed,Object? status = null,Object? isBoosted = null,Object? boostUntil = freezed,Object? views = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrls = null,Object? sellerUsername = freezed,Object? sellerAvatarUrl = freezed,Object? sellerRating = null,Object? categoryName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,animalTypes: null == animalTypes ? _self.animalTypes : animalTypes // ignore: cast_nullable_to_non_nullable
as List<AnimalType>,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ProductCondition?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,isBoosted: null == isBoosted ? _self.isBoosted : isBoosted // ignore: cast_nullable_to_non_nullable
as bool,boostUntil: freezed == boostUntil ? _self.boostUntil : boostUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,sellerUsername: freezed == sellerUsername ? _self.sellerUsername : sellerUsername // ignore: cast_nullable_to_non_nullable
as String?,sellerAvatarUrl: freezed == sellerAvatarUrl ? _self.sellerAvatarUrl : sellerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,sellerRating: null == sellerRating ? _self.sellerRating : sellerRating // ignore: cast_nullable_to_non_nullable
as double,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceListing].
extension MarketplaceListingPatterns on MarketplaceListing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceListing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceListing value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceListing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceListing value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceListing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String sellerId,  String? categoryId,  String title,  String? description,  double price,  String currency,  List<AnimalType> animalTypes,  ProductCondition? condition,  String? location,  ListingStatus status,  bool isBoosted,  DateTime? boostUntil,  int views,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? sellerUsername,  String? sellerAvatarUrl,  double sellerRating,  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceListing() when $default != null:
return $default(_that.id,_that.sellerId,_that.categoryId,_that.title,_that.description,_that.price,_that.currency,_that.animalTypes,_that.condition,_that.location,_that.status,_that.isBoosted,_that.boostUntil,_that.views,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.sellerUsername,_that.sellerAvatarUrl,_that.sellerRating,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String sellerId,  String? categoryId,  String title,  String? description,  double price,  String currency,  List<AnimalType> animalTypes,  ProductCondition? condition,  String? location,  ListingStatus status,  bool isBoosted,  DateTime? boostUntil,  int views,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? sellerUsername,  String? sellerAvatarUrl,  double sellerRating,  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceListing():
return $default(_that.id,_that.sellerId,_that.categoryId,_that.title,_that.description,_that.price,_that.currency,_that.animalTypes,_that.condition,_that.location,_that.status,_that.isBoosted,_that.boostUntil,_that.views,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.sellerUsername,_that.sellerAvatarUrl,_that.sellerRating,_that.categoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String sellerId,  String? categoryId,  String title,  String? description,  double price,  String currency,  List<AnimalType> animalTypes,  ProductCondition? condition,  String? location,  ListingStatus status,  bool isBoosted,  DateTime? boostUntil,  int views,  DateTime? createdAt,  DateTime? updatedAt,  List<String> imageUrls,  String? sellerUsername,  String? sellerAvatarUrl,  double sellerRating,  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceListing() when $default != null:
return $default(_that.id,_that.sellerId,_that.categoryId,_that.title,_that.description,_that.price,_that.currency,_that.animalTypes,_that.condition,_that.location,_that.status,_that.isBoosted,_that.boostUntil,_that.views,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.sellerUsername,_that.sellerAvatarUrl,_that.sellerRating,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketplaceListing implements MarketplaceListing {
  const _MarketplaceListing({required this.id, required this.sellerId, this.categoryId, required this.title, this.description, required this.price, this.currency = 'PHP', final  List<AnimalType> animalTypes = const [], this.condition, this.location, this.status = ListingStatus.active, this.isBoosted = false, this.boostUntil, this.views = 0, this.createdAt, this.updatedAt, final  List<String> imageUrls = const [], this.sellerUsername, this.sellerAvatarUrl, this.sellerRating = 0.0, this.categoryName}): _animalTypes = animalTypes,_imageUrls = imageUrls;
  factory _MarketplaceListing.fromJson(Map<String, dynamic> json) => _$MarketplaceListingFromJson(json);

@override final  String id;
@override final  String sellerId;
@override final  String? categoryId;
@override final  String title;
@override final  String? description;
@override final  double price;
@override@JsonKey() final  String currency;
 final  List<AnimalType> _animalTypes;
@override@JsonKey() List<AnimalType> get animalTypes {
  if (_animalTypes is EqualUnmodifiableListView) return _animalTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_animalTypes);
}

@override final  ProductCondition? condition;
@override final  String? location;
@override@JsonKey() final  ListingStatus status;
@override@JsonKey() final  bool isBoosted;
@override final  DateTime? boostUntil;
@override@JsonKey() final  int views;
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

@override final  String? sellerUsername;
@override final  String? sellerAvatarUrl;
@override@JsonKey() final  double sellerRating;
@override final  String? categoryName;

/// Create a copy of MarketplaceListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceListingCopyWith<_MarketplaceListing> get copyWith => __$MarketplaceListingCopyWithImpl<_MarketplaceListing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketplaceListingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceListing&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._animalTypes, _animalTypes)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status)&&(identical(other.isBoosted, isBoosted) || other.isBoosted == isBoosted)&&(identical(other.boostUntil, boostUntil) || other.boostUntil == boostUntil)&&(identical(other.views, views) || other.views == views)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.sellerUsername, sellerUsername) || other.sellerUsername == sellerUsername)&&(identical(other.sellerAvatarUrl, sellerAvatarUrl) || other.sellerAvatarUrl == sellerAvatarUrl)&&(identical(other.sellerRating, sellerRating) || other.sellerRating == sellerRating)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sellerId,categoryId,title,description,price,currency,const DeepCollectionEquality().hash(_animalTypes),condition,location,status,isBoosted,boostUntil,views,createdAt,updatedAt,const DeepCollectionEquality().hash(_imageUrls),sellerUsername,sellerAvatarUrl,sellerRating,categoryName]);

@override
String toString() {
  return 'MarketplaceListing(id: $id, sellerId: $sellerId, categoryId: $categoryId, title: $title, description: $description, price: $price, currency: $currency, animalTypes: $animalTypes, condition: $condition, location: $location, status: $status, isBoosted: $isBoosted, boostUntil: $boostUntil, views: $views, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, sellerUsername: $sellerUsername, sellerAvatarUrl: $sellerAvatarUrl, sellerRating: $sellerRating, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceListingCopyWith<$Res> implements $MarketplaceListingCopyWith<$Res> {
  factory _$MarketplaceListingCopyWith(_MarketplaceListing value, $Res Function(_MarketplaceListing) _then) = __$MarketplaceListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String sellerId, String? categoryId, String title, String? description, double price, String currency, List<AnimalType> animalTypes, ProductCondition? condition, String? location, ListingStatus status, bool isBoosted, DateTime? boostUntil, int views, DateTime? createdAt, DateTime? updatedAt, List<String> imageUrls, String? sellerUsername, String? sellerAvatarUrl, double sellerRating, String? categoryName
});




}
/// @nodoc
class __$MarketplaceListingCopyWithImpl<$Res>
    implements _$MarketplaceListingCopyWith<$Res> {
  __$MarketplaceListingCopyWithImpl(this._self, this._then);

  final _MarketplaceListing _self;
  final $Res Function(_MarketplaceListing) _then;

/// Create a copy of MarketplaceListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? categoryId = freezed,Object? title = null,Object? description = freezed,Object? price = null,Object? currency = null,Object? animalTypes = null,Object? condition = freezed,Object? location = freezed,Object? status = null,Object? isBoosted = null,Object? boostUntil = freezed,Object? views = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? imageUrls = null,Object? sellerUsername = freezed,Object? sellerAvatarUrl = freezed,Object? sellerRating = null,Object? categoryName = freezed,}) {
  return _then(_MarketplaceListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,animalTypes: null == animalTypes ? _self._animalTypes : animalTypes // ignore: cast_nullable_to_non_nullable
as List<AnimalType>,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ProductCondition?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,isBoosted: null == isBoosted ? _self.isBoosted : isBoosted // ignore: cast_nullable_to_non_nullable
as bool,boostUntil: freezed == boostUntil ? _self.boostUntil : boostUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,sellerUsername: freezed == sellerUsername ? _self.sellerUsername : sellerUsername // ignore: cast_nullable_to_non_nullable
as String?,sellerAvatarUrl: freezed == sellerAvatarUrl ? _self.sellerAvatarUrl : sellerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,sellerRating: null == sellerRating ? _self.sellerRating : sellerRating // ignore: cast_nullable_to_non_nullable
as double,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ListingReview {

 String get id; String get listingId; String get reviewerId; String get sellerId; int get rating; String? get body; DateTime? get createdAt;// joined
 String? get reviewerUsername; String? get reviewerAvatarUrl;
/// Create a copy of ListingReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingReviewCopyWith<ListingReview> get copyWith => _$ListingReviewCopyWithImpl<ListingReview>(this as ListingReview, _$identity);

  /// Serializes this ListingReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingReview&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.reviewerId, reviewerId) || other.reviewerId == reviewerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.reviewerUsername, reviewerUsername) || other.reviewerUsername == reviewerUsername)&&(identical(other.reviewerAvatarUrl, reviewerAvatarUrl) || other.reviewerAvatarUrl == reviewerAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,reviewerId,sellerId,rating,body,createdAt,reviewerUsername,reviewerAvatarUrl);

@override
String toString() {
  return 'ListingReview(id: $id, listingId: $listingId, reviewerId: $reviewerId, sellerId: $sellerId, rating: $rating, body: $body, createdAt: $createdAt, reviewerUsername: $reviewerUsername, reviewerAvatarUrl: $reviewerAvatarUrl)';
}


}

/// @nodoc
abstract mixin class $ListingReviewCopyWith<$Res>  {
  factory $ListingReviewCopyWith(ListingReview value, $Res Function(ListingReview) _then) = _$ListingReviewCopyWithImpl;
@useResult
$Res call({
 String id, String listingId, String reviewerId, String sellerId, int rating, String? body, DateTime? createdAt, String? reviewerUsername, String? reviewerAvatarUrl
});




}
/// @nodoc
class _$ListingReviewCopyWithImpl<$Res>
    implements $ListingReviewCopyWith<$Res> {
  _$ListingReviewCopyWithImpl(this._self, this._then);

  final ListingReview _self;
  final $Res Function(ListingReview) _then;

/// Create a copy of ListingReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? reviewerId = null,Object? sellerId = null,Object? rating = null,Object? body = freezed,Object? createdAt = freezed,Object? reviewerUsername = freezed,Object? reviewerAvatarUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,reviewerId: null == reviewerId ? _self.reviewerId : reviewerId // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewerUsername: freezed == reviewerUsername ? _self.reviewerUsername : reviewerUsername // ignore: cast_nullable_to_non_nullable
as String?,reviewerAvatarUrl: freezed == reviewerAvatarUrl ? _self.reviewerAvatarUrl : reviewerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingReview].
extension ListingReviewPatterns on ListingReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingReview value)  $default,){
final _that = this;
switch (_that) {
case _ListingReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingReview value)?  $default,){
final _that = this;
switch (_that) {
case _ListingReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String listingId,  String reviewerId,  String sellerId,  int rating,  String? body,  DateTime? createdAt,  String? reviewerUsername,  String? reviewerAvatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingReview() when $default != null:
return $default(_that.id,_that.listingId,_that.reviewerId,_that.sellerId,_that.rating,_that.body,_that.createdAt,_that.reviewerUsername,_that.reviewerAvatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String listingId,  String reviewerId,  String sellerId,  int rating,  String? body,  DateTime? createdAt,  String? reviewerUsername,  String? reviewerAvatarUrl)  $default,) {final _that = this;
switch (_that) {
case _ListingReview():
return $default(_that.id,_that.listingId,_that.reviewerId,_that.sellerId,_that.rating,_that.body,_that.createdAt,_that.reviewerUsername,_that.reviewerAvatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String listingId,  String reviewerId,  String sellerId,  int rating,  String? body,  DateTime? createdAt,  String? reviewerUsername,  String? reviewerAvatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _ListingReview() when $default != null:
return $default(_that.id,_that.listingId,_that.reviewerId,_that.sellerId,_that.rating,_that.body,_that.createdAt,_that.reviewerUsername,_that.reviewerAvatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingReview implements ListingReview {
  const _ListingReview({required this.id, required this.listingId, required this.reviewerId, required this.sellerId, required this.rating, this.body, this.createdAt, this.reviewerUsername, this.reviewerAvatarUrl});
  factory _ListingReview.fromJson(Map<String, dynamic> json) => _$ListingReviewFromJson(json);

@override final  String id;
@override final  String listingId;
@override final  String reviewerId;
@override final  String sellerId;
@override final  int rating;
@override final  String? body;
@override final  DateTime? createdAt;
// joined
@override final  String? reviewerUsername;
@override final  String? reviewerAvatarUrl;

/// Create a copy of ListingReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingReviewCopyWith<_ListingReview> get copyWith => __$ListingReviewCopyWithImpl<_ListingReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingReview&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.reviewerId, reviewerId) || other.reviewerId == reviewerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.reviewerUsername, reviewerUsername) || other.reviewerUsername == reviewerUsername)&&(identical(other.reviewerAvatarUrl, reviewerAvatarUrl) || other.reviewerAvatarUrl == reviewerAvatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,reviewerId,sellerId,rating,body,createdAt,reviewerUsername,reviewerAvatarUrl);

@override
String toString() {
  return 'ListingReview(id: $id, listingId: $listingId, reviewerId: $reviewerId, sellerId: $sellerId, rating: $rating, body: $body, createdAt: $createdAt, reviewerUsername: $reviewerUsername, reviewerAvatarUrl: $reviewerAvatarUrl)';
}


}

/// @nodoc
abstract mixin class _$ListingReviewCopyWith<$Res> implements $ListingReviewCopyWith<$Res> {
  factory _$ListingReviewCopyWith(_ListingReview value, $Res Function(_ListingReview) _then) = __$ListingReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String listingId, String reviewerId, String sellerId, int rating, String? body, DateTime? createdAt, String? reviewerUsername, String? reviewerAvatarUrl
});




}
/// @nodoc
class __$ListingReviewCopyWithImpl<$Res>
    implements _$ListingReviewCopyWith<$Res> {
  __$ListingReviewCopyWithImpl(this._self, this._then);

  final _ListingReview _self;
  final $Res Function(_ListingReview) _then;

/// Create a copy of ListingReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? reviewerId = null,Object? sellerId = null,Object? rating = null,Object? body = freezed,Object? createdAt = freezed,Object? reviewerUsername = freezed,Object? reviewerAvatarUrl = freezed,}) {
  return _then(_ListingReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,reviewerId: null == reviewerId ? _self.reviewerId : reviewerId // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewerUsername: freezed == reviewerUsername ? _self.reviewerUsername : reviewerUsername // ignore: cast_nullable_to_non_nullable
as String?,reviewerAvatarUrl: freezed == reviewerAvatarUrl ? _self.reviewerAvatarUrl : reviewerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

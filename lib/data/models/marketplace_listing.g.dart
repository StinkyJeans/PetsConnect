// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingCategory _$ListingCategoryFromJson(Map<String, dynamic> json) =>
    _ListingCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      iconName: json['icon_name'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ListingCategoryToJson(_ListingCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'icon_name': instance.iconName,
      'sort_order': instance.sortOrder,
    };

_MarketplaceListing _$MarketplaceListingFromJson(Map<String, dynamic> json) =>
    _MarketplaceListing(
      id: json['id'] as String,
      sellerId: json['seller_id'] as String,
      categoryId: json['category_id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String? ?? 'PHP',
      animalTypes:
          (json['animal_types'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AnimalTypeEnumMap, e))
              .toList() ??
          const [],
      condition: $enumDecodeNullable(
        _$ProductConditionEnumMap,
        json['condition'],
      ),
      location: json['location'] as String?,
      status:
          $enumDecodeNullable(_$ListingStatusEnumMap, json['status']) ??
          ListingStatus.active,
      isBoosted: json['is_boosted'] as bool? ?? false,
      boostUntil: json['boost_until'] == null
          ? null
          : DateTime.parse(json['boost_until'] as String),
      views: (json['views'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      imageUrls:
          (json['image_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sellerUsername: json['seller_username'] as String?,
      sellerAvatarUrl: json['seller_avatar_url'] as String?,
      sellerRating: (json['seller_rating'] as num?)?.toDouble() ?? 0.0,
      categoryName: json['category_name'] as String?,
    );

Map<String, dynamic> _$MarketplaceListingToJson(_MarketplaceListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seller_id': instance.sellerId,
      'category_id': instance.categoryId,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'currency': instance.currency,
      'animal_types': instance.animalTypes
          .map((e) => _$AnimalTypeEnumMap[e]!)
          .toList(),
      'condition': _$ProductConditionEnumMap[instance.condition],
      'location': instance.location,
      'status': _$ListingStatusEnumMap[instance.status]!,
      'is_boosted': instance.isBoosted,
      'boost_until': instance.boostUntil?.toIso8601String(),
      'views': instance.views,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'image_urls': instance.imageUrls,
      'seller_username': instance.sellerUsername,
      'seller_avatar_url': instance.sellerAvatarUrl,
      'seller_rating': instance.sellerRating,
      'category_name': instance.categoryName,
    };

const _$AnimalTypeEnumMap = {
  AnimalType.dog: 'dog',
  AnimalType.cat: 'cat',
  AnimalType.bird: 'bird',
  AnimalType.reptile: 'reptile',
  AnimalType.fish: 'fish',
  AnimalType.rabbit: 'rabbit',
  AnimalType.hamster: 'hamster',
  AnimalType.guineaPig: 'guineaPig',
  AnimalType.horse: 'horse',
  AnimalType.other: 'other',
};

const _$ProductConditionEnumMap = {
  ProductCondition.newItem: 'newItem',
  ProductCondition.likeNew: 'likeNew',
  ProductCondition.good: 'good',
  ProductCondition.fair: 'fair',
};

const _$ListingStatusEnumMap = {
  ListingStatus.active: 'active',
  ListingStatus.sold: 'sold',
  ListingStatus.archived: 'archived',
};

_ListingReview _$ListingReviewFromJson(Map<String, dynamic> json) =>
    _ListingReview(
      id: json['id'] as String,
      listingId: json['listing_id'] as String,
      reviewerId: json['reviewer_id'] as String,
      sellerId: json['seller_id'] as String,
      rating: (json['rating'] as num).toInt(),
      body: json['body'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      reviewerUsername: json['reviewer_username'] as String?,
      reviewerAvatarUrl: json['reviewer_avatar_url'] as String?,
    );

Map<String, dynamic> _$ListingReviewToJson(_ListingReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing_id': instance.listingId,
      'reviewer_id': instance.reviewerId,
      'seller_id': instance.sellerId,
      'rating': instance.rating,
      'body': instance.body,
      'created_at': instance.createdAt?.toIso8601String(),
      'reviewer_username': instance.reviewerUsername,
      'reviewer_avatar_url': instance.reviewerAvatarUrl,
    };

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pet_profile.dart';

part 'marketplace_listing.freezed.dart';
part 'marketplace_listing.g.dart';

enum ListingStatus { active, sold, archived }
enum ProductCondition { newItem, likeNew, good, fair }

@freezed
abstract class ListingCategory with _$ListingCategory {
  const factory ListingCategory({
    required String id,
    required String name,
    required String slug,
    String? iconName,
    @Default(0) int sortOrder,
  }) = _ListingCategory;

  factory ListingCategory.fromJson(Map<String, dynamic> json) => _$ListingCategoryFromJson(json);
}

@freezed
abstract class MarketplaceListing with _$MarketplaceListing {
  const factory MarketplaceListing({
    required String id,
    required String sellerId,
    String? categoryId,
    required String title,
    String? description,
    required double price,
    @Default('PHP') String currency,
    @Default([]) List<AnimalType> animalTypes,
    ProductCondition? condition,
    String? location,
    @Default(ListingStatus.active) ListingStatus status,
    @Default(false) bool isBoosted,
    DateTime? boostUntil,
    @Default(0) int views,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    @Default([]) List<String> imageUrls,
    String? sellerUsername,
    String? sellerAvatarUrl,
    @Default(0.0) double sellerRating,
    String? categoryName,
  }) = _MarketplaceListing;

  factory MarketplaceListing.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceListingFromJson(json);
}

@freezed
abstract class ListingReview with _$ListingReview {
  const factory ListingReview({
    required String id,
    required String listingId,
    required String reviewerId,
    required String sellerId,
    required int rating,
    String? body,
    DateTime? createdAt,
    // joined
    String? reviewerUsername,
    String? reviewerAvatarUrl,
  }) = _ListingReview;

  factory ListingReview.fromJson(Map<String, dynamic> json) => _$ListingReviewFromJson(json);
}

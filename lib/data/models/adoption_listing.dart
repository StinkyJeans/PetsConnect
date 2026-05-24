import 'package:freezed_annotation/freezed_annotation.dart';

import 'pet_profile.dart';

part 'adoption_listing.freezed.dart';
part 'adoption_listing.g.dart';

enum AdoptionStatus { available, pending, adopted }
enum AdoptionRequestStatus { pending, approved, rejected, withdrawn }

@freezed
abstract class AdoptionListing with _$AdoptionListing {
  const factory AdoptionListing({
    required String id,
    required String posterId,
    required String petName,
    required AnimalType animalType,
    String? breed,
    int? ageYears,
    int? ageMonths,
    @Default(PetGender.unknown) PetGender gender,
    PetSize? size,
    String? description,
    String? healthNotes,
    @Default(false) bool isVaccinated,
    @Default(false) bool isNeutered,
    String? location,
    @Default(AdoptionStatus.available) AdoptionStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    @Default([]) List<String> imageUrls,
    String? posterUsername,
    String? posterAvatarUrl,
    @Default(false) bool isSavedByMe,
  }) = _AdoptionListing;

  factory AdoptionListing.fromJson(Map<String, dynamic> json) =>
      _$AdoptionListingFromJson(json);
}

@freezed
abstract class AdoptionRequest with _$AdoptionRequest {
  const factory AdoptionRequest({
    required String id,
    required String listingId,
    required String applicantId,
    @Default(AdoptionRequestStatus.pending) AdoptionRequestStatus status,
    String? message,
    String? livingSituation,
    bool? hasOtherPets,
    String? experience,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    String? applicantUsername,
    String? applicantAvatarUrl,
  }) = _AdoptionRequest;

  factory AdoptionRequest.fromJson(Map<String, dynamic> json) =>
      _$AdoptionRequestFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adoption_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdoptionListing _$AdoptionListingFromJson(Map<String, dynamic> json) =>
    _AdoptionListing(
      id: json['id'] as String,
      posterId: json['poster_id'] as String,
      petName: json['pet_name'] as String,
      animalType: $enumDecode(_$AnimalTypeEnumMap, json['animal_type']),
      breed: json['breed'] as String?,
      ageYears: (json['age_years'] as num?)?.toInt(),
      ageMonths: (json['age_months'] as num?)?.toInt(),
      gender:
          $enumDecodeNullable(_$PetGenderEnumMap, json['gender']) ??
          PetGender.unknown,
      size: $enumDecodeNullable(_$PetSizeEnumMap, json['size']),
      description: json['description'] as String?,
      healthNotes: json['health_notes'] as String?,
      isVaccinated: json['is_vaccinated'] as bool? ?? false,
      isNeutered: json['is_neutered'] as bool? ?? false,
      location: json['location'] as String?,
      status:
          $enumDecodeNullable(_$AdoptionStatusEnumMap, json['status']) ??
          AdoptionStatus.available,
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
      posterUsername: json['poster_username'] as String?,
      posterAvatarUrl: json['poster_avatar_url'] as String?,
      isSavedByMe: json['is_saved_by_me'] as bool? ?? false,
    );

Map<String, dynamic> _$AdoptionListingToJson(_AdoptionListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_id': instance.posterId,
      'pet_name': instance.petName,
      'animal_type': _$AnimalTypeEnumMap[instance.animalType]!,
      'breed': instance.breed,
      'age_years': instance.ageYears,
      'age_months': instance.ageMonths,
      'gender': _$PetGenderEnumMap[instance.gender]!,
      'size': _$PetSizeEnumMap[instance.size],
      'description': instance.description,
      'health_notes': instance.healthNotes,
      'is_vaccinated': instance.isVaccinated,
      'is_neutered': instance.isNeutered,
      'location': instance.location,
      'status': _$AdoptionStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'image_urls': instance.imageUrls,
      'poster_username': instance.posterUsername,
      'poster_avatar_url': instance.posterAvatarUrl,
      'is_saved_by_me': instance.isSavedByMe,
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

const _$PetGenderEnumMap = {
  PetGender.male: 'male',
  PetGender.female: 'female',
  PetGender.unknown: 'unknown',
};

const _$PetSizeEnumMap = {
  PetSize.tiny: 'tiny',
  PetSize.small: 'small',
  PetSize.medium: 'medium',
  PetSize.large: 'large',
  PetSize.extraLarge: 'extraLarge',
};

const _$AdoptionStatusEnumMap = {
  AdoptionStatus.available: 'available',
  AdoptionStatus.pending: 'pending',
  AdoptionStatus.adopted: 'adopted',
};

_AdoptionRequest _$AdoptionRequestFromJson(Map<String, dynamic> json) =>
    _AdoptionRequest(
      id: json['id'] as String,
      listingId: json['listing_id'] as String,
      applicantId: json['applicant_id'] as String,
      status:
          $enumDecodeNullable(_$AdoptionRequestStatusEnumMap, json['status']) ??
          AdoptionRequestStatus.pending,
      message: json['message'] as String?,
      livingSituation: json['living_situation'] as String?,
      hasOtherPets: json['has_other_pets'] as bool?,
      experience: json['experience'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      applicantUsername: json['applicant_username'] as String?,
      applicantAvatarUrl: json['applicant_avatar_url'] as String?,
    );

Map<String, dynamic> _$AdoptionRequestToJson(_AdoptionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing_id': instance.listingId,
      'applicant_id': instance.applicantId,
      'status': _$AdoptionRequestStatusEnumMap[instance.status]!,
      'message': instance.message,
      'living_situation': instance.livingSituation,
      'has_other_pets': instance.hasOtherPets,
      'experience': instance.experience,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'applicant_username': instance.applicantUsername,
      'applicant_avatar_url': instance.applicantAvatarUrl,
    };

const _$AdoptionRequestStatusEnumMap = {
  AdoptionRequestStatus.pending: 'pending',
  AdoptionRequestStatus.approved: 'approved',
  AdoptionRequestStatus.rejected: 'rejected',
  AdoptionRequestStatus.withdrawn: 'withdrawn',
};

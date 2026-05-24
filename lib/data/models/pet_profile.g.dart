// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PetProfile _$PetProfileFromJson(Map<String, dynamic> json) => _PetProfile(
  id: json['id'] as String,
  ownerId: json['owner_id'] as String,
  name: json['name'] as String,
  animalType: $enumDecode(_$AnimalTypeEnumMap, json['animal_type']),
  breed: json['breed'] as String?,
  ageYears: (json['age_years'] as num?)?.toInt(),
  ageMonths: (json['age_months'] as num?)?.toInt(),
  gender:
      $enumDecodeNullable(_$PetGenderEnumMap, json['gender']) ??
      PetGender.unknown,
  size: $enumDecodeNullable(_$PetSizeEnumMap, json['size']),
  bio: json['bio'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  isPublic: json['is_public'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$PetProfileToJson(_PetProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'name': instance.name,
      'animal_type': _$AnimalTypeEnumMap[instance.animalType]!,
      'breed': instance.breed,
      'age_years': instance.ageYears,
      'age_months': instance.ageMonths,
      'gender': _$PetGenderEnumMap[instance.gender]!,
      'size': _$PetSizeEnumMap[instance.size],
      'bio': instance.bio,
      'avatar_url': instance.avatarUrl,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
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

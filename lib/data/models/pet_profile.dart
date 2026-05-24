import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_profile.freezed.dart';
part 'pet_profile.g.dart';

enum AnimalType { dog, cat, bird, reptile, fish, rabbit, hamster, guineaPig, horse, other }
enum PetGender { male, female, unknown }
enum PetSize { tiny, small, medium, large, extraLarge }

@freezed
abstract class PetProfile with _$PetProfile {
  const factory PetProfile({
    required String id,
    required String ownerId,
    required String name,
    required AnimalType animalType,
    String? breed,
    int? ageYears,
    int? ageMonths,
    @Default(PetGender.unknown) PetGender gender,
    PetSize? size,
    String? bio,
    String? avatarUrl,
    @Default(true) bool isPublic,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PetProfile;

  factory PetProfile.fromJson(Map<String, dynamic> json) => _$PetProfileFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pet_profile.dart';

part 'rescue_post.freezed.dart';
part 'rescue_post.g.dart';

enum RescueUrgency { critical, needsHelp, safeNow }
enum RescueStatus { open, rescued, inCare, rehomed, closed }

@freezed
abstract class RescuePost with _$RescuePost {
  const factory RescuePost({
    required String id,
    required String posterId,
    required String title,
    String? description,
    AnimalType? animalType,
    @Default(RescueUrgency.needsHelp) RescueUrgency urgency,
    @Default(RescueStatus.open) RescueStatus status,
    double? latitude,
    double? longitude,
    String? location,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    @Default([]) List<String> imageUrls,
    String? posterUsername,
    String? posterAvatarUrl,
    @Default([]) List<RescueUpdate> updates,
    @Default(0) int volunteerCount,
    @Default(false) bool isVolunteering,
  }) = _RescuePost;

  factory RescuePost.fromJson(Map<String, dynamic> json) => _$RescuePostFromJson(json);
}

@freezed
abstract class RescueUpdate with _$RescueUpdate {
  const factory RescueUpdate({
    required String id,
    required String postId,
    required String authorId,
    required String body,
    RescueStatus? newStatus,
    DateTime? createdAt,
    // joined
    String? authorUsername,
    String? authorAvatarUrl,
  }) = _RescueUpdate;

  factory RescueUpdate.fromJson(Map<String, dynamic> json) => _$RescueUpdateFromJson(json);
}

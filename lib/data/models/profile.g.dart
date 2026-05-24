// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  id: json['id'] as String,
  username: json['username'] as String,
  displayName: json['display_name'] as String?,
  bio: json['bio'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  website: json['website'] as String?,
  location: json['location'] as String?,
  isShelter: json['is_shelter'] as bool? ?? false,
  isVerified: json['is_verified'] as bool? ?? false,
  fcmToken: json['fcm_token'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  followersCount: (json['followers_count'] as num?)?.toInt() ?? 0,
  followingCount: (json['following_count'] as num?)?.toInt() ?? 0,
  isFollowedByMe: json['is_followed_by_me'] as bool? ?? false,
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'display_name': instance.displayName,
  'bio': instance.bio,
  'avatar_url': instance.avatarUrl,
  'website': instance.website,
  'location': instance.location,
  'is_shelter': instance.isShelter,
  'is_verified': instance.isVerified,
  'fcm_token': instance.fcmToken,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'followers_count': instance.followersCount,
  'following_count': instance.followingCount,
  'is_followed_by_me': instance.isFollowedByMe,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rescue_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RescuePost _$RescuePostFromJson(Map<String, dynamic> json) => _RescuePost(
  id: json['id'] as String,
  posterId: json['poster_id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  animalType: $enumDecodeNullable(_$AnimalTypeEnumMap, json['animal_type']),
  urgency:
      $enumDecodeNullable(_$RescueUrgencyEnumMap, json['urgency']) ??
      RescueUrgency.needsHelp,
  status:
      $enumDecodeNullable(_$RescueStatusEnumMap, json['status']) ??
      RescueStatus.open,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  location: json['location'] as String?,
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
  updates:
      (json['updates'] as List<dynamic>?)
          ?.map((e) => RescueUpdate.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  volunteerCount: (json['volunteer_count'] as num?)?.toInt() ?? 0,
  isVolunteering: json['is_volunteering'] as bool? ?? false,
);

Map<String, dynamic> _$RescuePostToJson(_RescuePost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_id': instance.posterId,
      'title': instance.title,
      'description': instance.description,
      'animal_type': _$AnimalTypeEnumMap[instance.animalType],
      'urgency': _$RescueUrgencyEnumMap[instance.urgency]!,
      'status': _$RescueStatusEnumMap[instance.status]!,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'image_urls': instance.imageUrls,
      'poster_username': instance.posterUsername,
      'poster_avatar_url': instance.posterAvatarUrl,
      'updates': instance.updates.map((e) => e.toJson()).toList(),
      'volunteer_count': instance.volunteerCount,
      'is_volunteering': instance.isVolunteering,
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

const _$RescueUrgencyEnumMap = {
  RescueUrgency.critical: 'critical',
  RescueUrgency.needsHelp: 'needsHelp',
  RescueUrgency.safeNow: 'safeNow',
};

const _$RescueStatusEnumMap = {
  RescueStatus.open: 'open',
  RescueStatus.rescued: 'rescued',
  RescueStatus.inCare: 'inCare',
  RescueStatus.rehomed: 'rehomed',
  RescueStatus.closed: 'closed',
};

_RescueUpdate _$RescueUpdateFromJson(Map<String, dynamic> json) =>
    _RescueUpdate(
      id: json['id'] as String,
      postId: json['post_id'] as String,
      authorId: json['author_id'] as String,
      body: json['body'] as String,
      newStatus: $enumDecodeNullable(_$RescueStatusEnumMap, json['new_status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      authorUsername: json['author_username'] as String?,
      authorAvatarUrl: json['author_avatar_url'] as String?,
    );

Map<String, dynamic> _$RescueUpdateToJson(_RescueUpdate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'author_id': instance.authorId,
      'body': instance.body,
      'new_status': _$RescueStatusEnumMap[instance.newStatus],
      'created_at': instance.createdAt?.toIso8601String(),
      'author_username': instance.authorUsername,
      'author_avatar_url': instance.authorAvatarUrl,
    };

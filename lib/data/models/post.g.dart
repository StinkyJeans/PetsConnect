// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostMedia _$PostMediaFromJson(Map<String, dynamic> json) => _PostMedia(
  id: json['id'] as String,
  postId: json['post_id'] as String,
  url: json['url'] as String,
  mediaType: json['media_type'] as String,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  duration: (json['duration'] as num?)?.toInt(),
  position: (json['position'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$PostMediaToJson(_PostMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'url': instance.url,
      'media_type': instance.mediaType,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration,
      'position': instance.position,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  petId: json['pet_id'] as String?,
  postType:
      $enumDecodeNullable(_$PostTypeEnumMap, json['post_type']) ??
      PostType.photo,
  caption: json['caption'] as String?,
  location: json['location'] as String?,
  animalTypes:
      (json['animal_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AnimalTypeEnumMap, e))
          .toList() ??
      const [],
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isArchived: json['is_archived'] as bool? ?? false,
  expiresAt: json['expires_at'] == null
      ? null
      : DateTime.parse(json['expires_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  username: json['username'] as String?,
  displayName: json['display_name'] as String?,
  authorAvatarUrl: json['author_avatar_url'] as String?,
  media:
      (json['media'] as List<dynamic>?)
          ?.map((e) => PostMedia.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  likesCount: (json['likes_count'] as num?)?.toInt() ?? 0,
  commentsCount: (json['comments_count'] as num?)?.toInt() ?? 0,
  savesCount: (json['saves_count'] as num?)?.toInt() ?? 0,
  isLikedByMe: json['is_liked_by_me'] as bool? ?? false,
  isSavedByMe: json['is_saved_by_me'] as bool? ?? false,
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'pet_id': instance.petId,
  'post_type': _$PostTypeEnumMap[instance.postType]!,
  'caption': instance.caption,
  'location': instance.location,
  'animal_types': instance.animalTypes
      .map((e) => _$AnimalTypeEnumMap[e]!)
      .toList(),
  'hashtags': instance.hashtags,
  'is_archived': instance.isArchived,
  'expires_at': instance.expiresAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'username': instance.username,
  'display_name': instance.displayName,
  'author_avatar_url': instance.authorAvatarUrl,
  'media': instance.media.map((e) => e.toJson()).toList(),
  'likes_count': instance.likesCount,
  'comments_count': instance.commentsCount,
  'saves_count': instance.savesCount,
  'is_liked_by_me': instance.isLikedByMe,
  'is_saved_by_me': instance.isSavedByMe,
};

const _$PostTypeEnumMap = {
  PostType.photo: 'photo',
  PostType.video: 'video',
  PostType.story: 'story',
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

_PostComment _$PostCommentFromJson(Map<String, dynamic> json) => _PostComment(
  id: json['id'] as String,
  postId: json['post_id'] as String,
  userId: json['user_id'] as String,
  parentId: json['parent_id'] as String?,
  body: json['body'] as String,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  username: json['username'] as String?,
  authorAvatarUrl: json['author_avatar_url'] as String?,
);

Map<String, dynamic> _$PostCommentToJson(_PostComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'user_id': instance.userId,
      'parent_id': instance.parentId,
      'body': instance.body,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'username': instance.username,
      'author_avatar_url': instance.authorAvatarUrl,
    };

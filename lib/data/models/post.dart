import 'package:freezed_annotation/freezed_annotation.dart';

import 'pet_profile.dart';

part 'post.freezed.dart';
part 'post.g.dart';

enum PostType { photo, video, story }

@freezed
abstract class PostMedia with _$PostMedia {
  const factory PostMedia({
    required String id,
    required String postId,
    required String url,
    required String mediaType,
    int? width,
    int? height,
    int? duration,
    @Default(0) int position,
    DateTime? createdAt,
  }) = _PostMedia;

  factory PostMedia.fromJson(Map<String, dynamic> json) => _$PostMediaFromJson(json);
}

@freezed
abstract class Post with _$Post {
  const factory Post({
    required String id,
    required String userId,
    String? petId,
    @Default(PostType.photo) PostType postType,
    String? caption,
    String? location,
    @Default([]) List<AnimalType> animalTypes,
    @Default([]) List<String> hashtags,
    @Default(false) bool isArchived,
    DateTime? expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    String? username,
    String? displayName,
    String? authorAvatarUrl,
    @Default([]) List<PostMedia> media,
    @Default(0) int likesCount,
    @Default(0) int commentsCount,
    @Default(0) int savesCount,
    @Default(false) bool isLikedByMe,
    @Default(false) bool isSavedByMe,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
abstract class PostComment with _$PostComment {
  const factory PostComment({
    required String id,
    required String postId,
    required String userId,
    String? parentId,
    required String body,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    String? username,
    String? authorAvatarUrl,
  }) = _PostComment;

  factory PostComment.fromJson(Map<String, dynamic> json) => _$PostCommentFromJson(json);
}

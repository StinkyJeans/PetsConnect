import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

enum ConversationType { direct, group }
enum MessageType { text, image, file, system }

@freezed
abstract class Conversation with _$Conversation {
  const factory Conversation({
    required String id,
    @Default(ConversationType.direct) ConversationType type,
    String? name,
    String? avatarUrl,
    String? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    @Default([]) List<ConversationMember> members,
    Message? lastMessage,
    @Default(0) int unreadCount,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);
}

@freezed
abstract class ConversationMember with _$ConversationMember {
  const factory ConversationMember({
    required String conversationId,
    required String userId,
    DateTime? joinedAt,
    DateTime? lastReadAt,
    @Default(false) bool isAdmin,
    // joined
    String? username,
    String? displayName,
    String? avatarUrl,
  }) = _ConversationMember;

  factory ConversationMember.fromJson(Map<String, dynamic> json) =>
      _$ConversationMemberFromJson(json);
}

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    required String conversationId,
    required String senderId,
    @Default(MessageType.text) MessageType messageType,
    String? body,
    String? fileUrl,
    String? fileName,
    int? fileSize,
    String? replyTo,
    @Default(false) bool isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    // joined
    String? senderUsername,
    String? senderAvatarUrl,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

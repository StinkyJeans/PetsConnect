// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Conversation _$ConversationFromJson(Map<String, dynamic> json) =>
    _Conversation(
      id: json['id'] as String,
      type:
          $enumDecodeNullable(_$ConversationTypeEnumMap, json['type']) ??
          ConversationType.direct,
      name: json['name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      createdBy: json['created_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      members:
          (json['members'] as List<dynamic>?)
              ?.map(
                (e) => ConversationMember.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      lastMessage: json['last_message'] == null
          ? null
          : Message.fromJson(json['last_message'] as Map<String, dynamic>),
      unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ConversationToJson(_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ConversationTypeEnumMap[instance.type]!,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'members': instance.members.map((e) => e.toJson()).toList(),
      'last_message': instance.lastMessage?.toJson(),
      'unread_count': instance.unreadCount,
    };

const _$ConversationTypeEnumMap = {
  ConversationType.direct: 'direct',
  ConversationType.group: 'group',
};

_ConversationMember _$ConversationMemberFromJson(Map<String, dynamic> json) =>
    _ConversationMember(
      conversationId: json['conversation_id'] as String,
      userId: json['user_id'] as String,
      joinedAt: json['joined_at'] == null
          ? null
          : DateTime.parse(json['joined_at'] as String),
      lastReadAt: json['last_read_at'] == null
          ? null
          : DateTime.parse(json['last_read_at'] as String),
      isAdmin: json['is_admin'] as bool? ?? false,
      username: json['username'] as String?,
      displayName: json['display_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$ConversationMemberToJson(_ConversationMember instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversationId,
      'user_id': instance.userId,
      'joined_at': instance.joinedAt?.toIso8601String(),
      'last_read_at': instance.lastReadAt?.toIso8601String(),
      'is_admin': instance.isAdmin,
      'username': instance.username,
      'display_name': instance.displayName,
      'avatar_url': instance.avatarUrl,
    };

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: json['id'] as String,
  conversationId: json['conversation_id'] as String,
  senderId: json['sender_id'] as String,
  messageType:
      $enumDecodeNullable(_$MessageTypeEnumMap, json['message_type']) ??
      MessageType.text,
  body: json['body'] as String?,
  fileUrl: json['file_url'] as String?,
  fileName: json['file_name'] as String?,
  fileSize: (json['file_size'] as num?)?.toInt(),
  replyTo: json['reply_to'] as String?,
  isDeleted: json['is_deleted'] as bool? ?? false,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  senderUsername: json['sender_username'] as String?,
  senderAvatarUrl: json['sender_avatar_url'] as String?,
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': instance.id,
  'conversation_id': instance.conversationId,
  'sender_id': instance.senderId,
  'message_type': _$MessageTypeEnumMap[instance.messageType]!,
  'body': instance.body,
  'file_url': instance.fileUrl,
  'file_name': instance.fileName,
  'file_size': instance.fileSize,
  'reply_to': instance.replyTo,
  'is_deleted': instance.isDeleted,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'sender_username': instance.senderUsername,
  'sender_avatar_url': instance.senderAvatarUrl,
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.file: 'file',
  MessageType.system: 'system',
};

import '../models/message.dart';
import '../services/api_service.dart';

class MessagingRepository {
  Future<List<Conversation>> getConversations() async {
    final res = await ApiService.client.get('/messages/conversations');
    return (res.data as List)
        .map((e) => Conversation.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<Message>> getMessages(String conversationId,
      {int page = 0, int limit = 30}) async {
    final res = await ApiService.client.get(
      '/messages/conversations/$conversationId/messages',
      queryParameters: {'page': page, 'limit': limit},
    );
    return (res.data as List)
        .map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Message> sendMessage({
    required String conversationId,
    required String body,
    String messageType = 'text',
    String? fileUrl,
    String? replyTo,
  }) async {
    final res = await ApiService.client.post(
      '/messages/conversations/$conversationId/messages',
      data: {
        'body': body,
        'messageType': messageType,
        if (fileUrl != null) 'fileUrl': fileUrl,
        if (replyTo != null) 'replyTo': replyTo,
      },
    );
    return Message.fromJson(res.data as Map<String, dynamic>);
  }

  Future<String> getOrCreateDirectConversation(String otherUserId) async {
    final res = await ApiService.client
        .post('/messages/conversations/direct', data: {'otherUserId': otherUserId});
    return res.data['id'] as String;
  }

  Future<void> markAsRead(String conversationId) async {
    await ApiService.client
        .patch('/messages/conversations/$conversationId/read');
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/message.dart';
import '../../data/repositories/messaging_repository.dart';

final messagingRepositoryProvider =
    Provider<MessagingRepository>((ref) => MessagingRepository());

final conversationsProvider = FutureProvider<List<Conversation>>((ref) async {
  return ref.read(messagingRepositoryProvider).getConversations();
});

final messagesProvider =
    FutureProvider.family<List<Message>, String>((ref, conversationId) async {
  return ref.read(messagingRepositoryProvider).getMessages(conversationId);
});


class MessagingNotifier extends StateNotifier<AsyncValue<List<Message>>> {
  MessagingNotifier(this._repo, this._conversationId)
      : super(const AsyncValue.loading()) {
    load();
  }

  final MessagingRepository _repo;
  final String _conversationId;

  Future<void> load() async {
    state = await AsyncValue.guard(() => _repo.getMessages(_conversationId));
  }

  Future<void> send(String body, {String messageType = 'text', String? fileUrl}) async {
    await _repo.sendMessage(
      conversationId: _conversationId,
      body: body,
      messageType: messageType,
      fileUrl: fileUrl,
    );
    await load();
  }

  Future<void> markRead() async {
    await _repo.markAsRead(_conversationId);
  }
}

final messagingNotifierProvider =
    StateNotifierProvider.family<MessagingNotifier, AsyncValue<List<Message>>, String>(
  (ref, conversationId) =>
      MessagingNotifier(ref.read(messagingRepositoryProvider), conversationId),
);

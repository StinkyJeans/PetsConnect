import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../shared/providers/messaging_provider.dart';

class ConversationsScreen extends ConsumerWidget {
  const ConversationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final convsAsync = ref.watch(conversationsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        actions: [
          IconButton(icon: const Icon(Icons.edit_outlined), onPressed: () {}),
        ],
      ),
      body: convsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (conversations) => conversations.isEmpty
            ? const Center(child: Text('No conversations yet.'))
            : ListView.separated(
                itemCount: conversations.length,
                separatorBuilder: (_, _) => const Divider(height: 1),
                itemBuilder: (context, i) {
                  final conv = conversations[i];
                  final lastMsg = conv.lastMessage;
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: conv.avatarUrl != null
                          ? NetworkImage(conv.avatarUrl!)
                          : null,
                      child: conv.avatarUrl == null ? const Icon(Icons.group) : null,
                    ),
                    title: Text(conv.name ?? 'Chat', maxLines: 1, overflow: TextOverflow.ellipsis),
                    subtitle: Text(
                      lastMsg?.body ?? 'No messages yet',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: lastMsg?.createdAt != null
                        ? Text(timeago.format(lastMsg!.createdAt!), style: Theme.of(context).textTheme.labelSmall)
                        : null,
                    onTap: () {},
                  );
                },
              ),
      ),
    );
  }
}

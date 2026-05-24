import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/providers/feed_provider.dart';
import '../../../../shared/providers/profile_provider.dart';
import '../widgets/post_card.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsync = ref.watch(feedProvider);
    final profileAsync = ref.watch(currentProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('PetsConnect'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.add_box_outlined), onPressed: () => context.push('/create-post')),
          GestureDetector(
            onTap: () => context.push('/profile'),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: profileAsync.when(
                loading: () => const CircleAvatar(radius: 16,
                    child: Icon(Icons.person, size: 16)),
                error: (_, _) => const CircleAvatar(radius: 16,
                    child: Icon(Icons.person, size: 16)),
                data: (profile) => CircleAvatar(
                  radius: 16,
                  backgroundImage: profile.avatarUrl != null
                      ? CachedNetworkImageProvider(profile.avatarUrl!)
                      : null,
                  child: profile.avatarUrl == null
                      ? const Icon(Icons.person, size: 16)
                      : null,
                ),
              ),
            ),
          ),
        ],
      ),
      body: feedAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (posts) => posts.isEmpty
            ? const Center(child: Text('No posts yet. Follow some users!'))
            : RefreshIndicator(
                onRefresh: () => ref.refresh(feedProvider.future),
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, i) => PostCard(post: posts[i]),
                ),
              ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../data/models/post.dart';
import '../../../../shared/providers/feed_provider.dart';

class PostCard extends ConsumerWidget {
  const PostCard({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Author header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: post.authorAvatarUrl != null
                  ? CachedNetworkImageProvider(post.authorAvatarUrl!)
                  : null,
              child: post.authorAvatarUrl == null ? const Icon(Icons.person) : null,
            ),
            title: Text(post.displayName ?? post.username ?? ''),
            subtitle: post.createdAt != null ? Text(timeago.format(post.createdAt!)) : null,
            trailing: IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {}),
          ),

          // Media
          if (post.media.isNotEmpty)
            GestureDetector(
              onTap: () => context.push('/post', extra: post),
              child: AspectRatio(
                aspectRatio: 1,
                child: CachedNetworkImage(
                  imageUrl: post.media.first.url,
                  fit: BoxFit.cover,
                  placeholder: (context, _) => Container(color: Colors.grey.shade200),
                ),
              ),
            ),

          // Caption
          if (post.caption != null && post.caption!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: '${post.username ?? ''} ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: post.caption),
                  ],
                ),
              ),
            ),

          // Actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    post.isLikedByMe ? Icons.favorite : Icons.favorite_border,
                    color: post.isLikedByMe ? Colors.red : null,
                  ),
                  onPressed: () => ref
                      .read(feedNotifierProvider.notifier)
                      .toggleLike(post.id, post.isLikedByMe),
                ),
                Text('${post.likesCount}'),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.chat_bubble_outline),
                  onPressed: () => context.push('/post', extra: post),
                ),
                Text('${post.commentsCount}'),
                const Spacer(),
                IconButton(
                  icon: Icon(post.isSavedByMe ? Icons.bookmark : Icons.bookmark_border),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

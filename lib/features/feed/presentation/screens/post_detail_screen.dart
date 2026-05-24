import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../data/models/post.dart';
import '../../../../shared/providers/feed_provider.dart';

class PostDetailScreen extends ConsumerStatefulWidget {
  const PostDetailScreen({super.key, required this.post});
  final Post post;

  @override
  ConsumerState<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends ConsumerState<PostDetailScreen> {
  final _commentCtrl = TextEditingController();
  int _currentPage = 0;

  @override
  void dispose() {
    _commentCtrl.dispose();
    super.dispose();
  }

  Future<void> _submitComment() async {
    final body = _commentCtrl.text.trim();
    if (body.isEmpty) return;
    _commentCtrl.clear();
    FocusScope.of(context).unfocus();
    try {
      await ref.read(feedRepositoryProvider).addComment(widget.post.id, body);
      ref.invalidate(postCommentsProvider(widget.post.id));
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final commentsAsync = ref.watch(postCommentsProvider(widget.post.id));
    final post = widget.post;

    return Scaffold(
      appBar: AppBar(title: const Text('Post')),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                // Media carousel
                if (post.media.isNotEmpty)
                  SliverToBoxAdapter(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Stack(
                        children: [
                          PageView.builder(
                            itemCount: post.media.length,
                            onPageChanged: (i) =>
                                setState(() => _currentPage = i),
                            itemBuilder: (context, i) => CachedNetworkImage(
                              imageUrl: post.media[i].url,
                              fit: BoxFit.cover,
                              placeholder: (context, _) =>
                                  Container(color: Colors.grey.shade200),
                            ),
                          ),
                          if (post.media.length > 1)
                            Positioned(
                              bottom: 8,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  post.media.length,
                                  (i) => AnimatedContainer(
                                    duration:
                                        const Duration(milliseconds: 200),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    width: _currentPage == i ? 8 : 5,
                                    height: _currentPage == i ? 8 : 5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _currentPage == i
                                          ? Colors.white
                                          : Colors.white54,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),

                // Author + actions
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Author row
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  context.push('/profile/${post.userId}'),
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: post.authorAvatarUrl != null
                                    ? CachedNetworkImageProvider(
                                        post.authorAvatarUrl!)
                                    : null,
                                child: post.authorAvatarUrl == null
                                    ? const Icon(Icons.person, size: 18)
                                    : null,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () =>
                                  context.push('/profile/${post.userId}'),
                              child: Text(
                                post.displayName ?? post.username ?? '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                            if (post.createdAt != null)
                              Text(timeago.format(post.createdAt!),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall),
                          ],
                        ),
                        const SizedBox(height: 10),

                        // Like / comment / save row
                        Row(
                          children: [
                            _ActionButton(
                              icon: post.isLikedByMe
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: post.isLikedByMe ? Colors.red : null,
                              label: '${post.likesCount}',
                              onTap: () => ref
                                  .read(feedNotifierProvider.notifier)
                                  .toggleLike(post.id, post.isLikedByMe),
                            ),
                            const SizedBox(width: 16),
                            _ActionButton(
                              icon: Icons.chat_bubble_outline,
                              label: '${post.commentsCount}',
                              onTap: () {},
                            ),
                            const Spacer(),
                            _ActionButton(
                              icon: post.isSavedByMe
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                              label: '',
                              onTap: () {},
                            ),
                          ],
                        ),

                        // Caption
                        if (post.caption != null &&
                            post.caption!.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: '${post.username ?? ''}  ',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: post.caption),
                              ],
                            ),
                          ),
                        ],
                        const SizedBox(height: 4),
                        const Divider(),
                        Text('Comments',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                ),

                // Comments list
                commentsAsync.when(
                  loading: () => const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator())),
                  error: (e, _) => SliverToBoxAdapter(
                      child: Center(child: Text('$e'))),
                  data: (comments) => comments.isEmpty
                      ? const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text('No comments yet. Be the first!',
                                textAlign: TextAlign.center),
                          ),
                        )
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, i) => _CommentTile(comment: comments[i]),
                            childCount: comments.length,
                          ),
                        ),
                ),
              ],
            ),
          ),

          // Comment input
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: MediaQuery.of(context).viewInsets.bottom + 8,
                top: 8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _commentCtrl,
                      decoration: InputDecoration(
                        hintText: 'Add a comment…',
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24)),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                      ),
                      onSubmitted: (_) => _submitComment(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _submitComment,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.color,
  });
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: color, size: 24),
          if (label.isNotEmpty) ...[
            const SizedBox(width: 4),
            Text(label, style: Theme.of(context).textTheme.bodySmall),
          ],
        ],
      ),
    );
  }
}

class _CommentTile extends StatelessWidget {
  const _CommentTile({required this.comment});
  final PostComment comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: comment.authorAvatarUrl != null
                ? CachedNetworkImageProvider(comment.authorAvatarUrl!)
                : null,
            child: comment.authorAvatarUrl == null
                ? const Icon(Icons.person, size: 16)
                : null,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: '${comment.username ?? ''}  ',
                        style:
                            const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: comment.body),
                    ],
                  ),
                ),
                if (comment.createdAt != null)
                  Text(timeago.format(comment.createdAt!),
                      style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

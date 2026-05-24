import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/models/post.dart';
import '../../../../data/models/profile.dart';
import '../../../../shared/providers/auth_provider.dart';
import '../../../../shared/providers/profile_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key, this.userId});

  // null = current user's own profile
  final String? userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserIdAsync = ref.watch(currentUserIdProvider);
    final currentUserId = currentUserIdAsync.value;
    final targetId = userId ?? currentUserId;

    if (targetId == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final isOwnProfile = targetId == currentUserId;
    final profileAsync = isOwnProfile
        ? ref.watch(profileNotifierProvider)
        : ref.watch(userProfileProvider(targetId));
    final postsAsync = ref.watch(userPostsProvider(targetId));

    return Scaffold(
      appBar: AppBar(
        title: profileAsync.whenData((p) => Text(p.username)).value ??
            const Text('Profile'),
        actions: [
          if (isOwnProfile)
            IconButton(
              icon: const Icon(Icons.edit_outlined),
              onPressed: () => context.push('/profile/edit'),
            ),
          if (isOwnProfile)
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                await ref.read(authNotifierProvider.notifier).signOut();
                if (context.mounted) context.go('/auth/login');
              },
            ),
        ],
      ),
      body: profileAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (profile) => _ProfileBody(
          profile: profile,
          postsAsync: postsAsync,
          isOwnProfile: isOwnProfile,
          onFollow: () => ref
              .read(profileNotifierProvider.notifier)
              .toggleFollow(profile.id, profile.isFollowedByMe),
        ),
      ),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody({
    required this.profile,
    required this.postsAsync,
    required this.isOwnProfile,
    required this.onFollow,
  });

  final Profile profile;
  final AsyncValue<List<Post>> postsAsync;
  final bool isOwnProfile;
  final VoidCallback onFollow;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _ProfileHeader(
          profile: profile,
          isOwnProfile: isOwnProfile,
          onFollow: onFollow,
        )),
        postsAsync.when(
          loading: () => const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (e, _) => SliverFillRemaining(
            child: Center(child: Text('$e')),
          ),
          data: (posts) {
            if (posts.isEmpty) {
              return const SliverFillRemaining(
                child: Center(child: Text('No posts yet.')),
              );
            }
            return SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, i) {
                  final post = posts[i];
                  final thumb = post.media.isNotEmpty ? post.media.first.url : null;
                  return GestureDetector(
                    onTap: () => context.push('/post', extra: post),
                    child: thumb != null
                        ? CachedNetworkImage(imageUrl: thumb, fit: BoxFit.cover)
                        : Container(color: Colors.grey.shade200,
                            child: const Icon(Icons.image_outlined)),
                  );
                },
                childCount: posts.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 1.5,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({
    required this.profile,
    required this.isOwnProfile,
    required this.onFollow,
  });

  final Profile profile;
  final bool isOwnProfile;
  final VoidCallback onFollow;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 44,
                backgroundImage: profile.avatarUrl != null
                    ? CachedNetworkImageProvider(profile.avatarUrl!)
                    : null,
                child: profile.avatarUrl == null
                    ? const Icon(Icons.person, size: 44)
                    : null,
              ),
              const SizedBox(width: 24),
              // Stats
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    statWidget(context, 'Posts', '0'),
                    statWidget(context, 'Followers',
                        '${profile.followersCount}'),
                    statWidget(context, 'Following',
                        '${profile.followingCount}'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Name + bio
          if (profile.displayName != null)
            Text(profile.displayName!,
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
          Text('@${profile.username}',
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: theme.colorScheme.outline)),
          if (profile.bio != null && profile.bio!.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(profile.bio!, style: theme.textTheme.bodyMedium),
          ],
          if (profile.location != null) ...[
            const SizedBox(height: 4),
            Row(children: [
              Icon(Icons.location_on_outlined,
                  size: 14, color: theme.colorScheme.outline),
              const SizedBox(width: 2),
              Text(profile.location!,
                  style: theme.textTheme.labelSmall
                      ?.copyWith(color: theme.colorScheme.outline)),
            ]),
          ],
          const SizedBox(height: 12),
          // Action button
          if (!isOwnProfile)
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onFollow,
                style: profile.isFollowedByMe
                    ? FilledButton.styleFrom(
                        backgroundColor: theme.colorScheme.surfaceContainerHighest,
                        foregroundColor: theme.colorScheme.onSurface,
                      )
                    : null,
                child: Text(profile.isFollowedByMe ? 'Following' : 'Follow'),
              ),
            ),
          const SizedBox(height: 8),
          const Divider(),
        ],
      ),
    );
  }

  Widget statWidget(BuildContext context, String label, String value) {
    return Column(
      children: [
        Text(value,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        Text(label, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}

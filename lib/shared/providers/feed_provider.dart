import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/post.dart';
import '../../data/repositories/feed_repository.dart';

final feedRepositoryProvider = Provider<FeedRepository>((ref) => FeedRepository());

final feedProvider = FutureProvider<List<Post>>((ref) async {
  return ref.read(feedRepositoryProvider).getFeed();
});

final postCommentsProvider = FutureProvider.family<List<PostComment>, String>((ref, postId) async {
  return ref.read(feedRepositoryProvider).getComments(postId);
});

class FeedNotifier extends StateNotifier<AsyncValue<List<Post>>> {
  FeedNotifier(this._repo) : super(const AsyncValue.loading()) {
    load();
  }

  final FeedRepository _repo;
  int _page = 0;
  bool _hasMore = true;

  Future<void> load() async {
    if (!_hasMore) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _repo.getFeed(page: _page));
    _page++;
  }

  Future<void> refresh() async {
    _page = 0;
    _hasMore = true;
    await load();
  }

  Future<void> toggleLike(String postId, bool currentlyLiked) async {
    if (currentlyLiked) {
      await _repo.unlikePost(postId);
    } else {
      await _repo.likePost(postId);
    }
    state.whenData((posts) {
      state = AsyncValue.data([
        for (final p in posts)
          if (p.id == postId)
            p.copyWith(
              isLikedByMe: !currentlyLiked,
              likesCount: currentlyLiked ? p.likesCount - 1 : p.likesCount + 1,
            )
          else
            p
      ]);
    });
  }
}

final feedNotifierProvider = StateNotifierProvider<FeedNotifier, AsyncValue<List<Post>>>((ref) {
  return FeedNotifier(ref.read(feedRepositoryProvider));
});

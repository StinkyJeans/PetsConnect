import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/post.dart';
import '../../data/models/profile.dart';
import '../../data/repositories/profile_repository.dart';
import '../../data/services/api_service.dart';

final profileRepositoryProvider =
    Provider<ProfileRepository>((ref) => ProfileRepository());

// Current logged-in user's profile
final currentProfileProvider = FutureProvider<Profile>((ref) async {
  return ref.read(profileRepositoryProvider).getCurrentProfile();
});

// Any user's profile by ID
final userProfileProvider =
    FutureProvider.family<Profile, String>((ref, userId) async {
  return ref.read(profileRepositoryProvider).getProfile(userId);
});

// Any user's posts by ID
final userPostsProvider =
    FutureProvider.family<List<Post>, String>((ref, userId) async {
  return ref.read(profileRepositoryProvider).getUserPosts(userId);
});

class ProfileNotifier extends StateNotifier<AsyncValue<Profile>> {
  ProfileNotifier(this._repo) : super(const AsyncValue.loading()) {
    load();
  }

  final ProfileRepository _repo;

  Future<void> load() async {
    state = await AsyncValue.guard(() => _repo.getCurrentProfile());
  }

  Future<void> updateProfile({
    String? displayName,
    String? bio,
    String? website,
    String? location,
    String? avatarUrl,
  }) async {
    state = await AsyncValue.guard(() => _repo.updateProfile(
          displayName: displayName,
          bio: bio,
          website: website,
          location: location,
          avatarUrl: avatarUrl,
        ));
  }

  Future<void> toggleFollow(String targetUserId, bool isFollowing) async {
    if (isFollowing) {
      await _repo.unfollow(targetUserId);
    } else {
      await _repo.follow(targetUserId);
    }
  }
}

final profileNotifierProvider =
    StateNotifierProvider<ProfileNotifier, AsyncValue<Profile>>((ref) {
  return ProfileNotifier(ref.read(profileRepositoryProvider));
});

// Current user ID — read async from secure storage
final currentUserIdProvider = FutureProvider<String?>((ref) async {
  return ApiService.getCurrentUserId();
});

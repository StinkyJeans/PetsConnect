import '../models/post.dart';
import '../models/profile.dart';
import '../services/api_service.dart';

class ProfileRepository {
  Future<Profile> getProfile(String userId) async {
    final res = await ApiService.client.get('/profiles/$userId');
    return Profile.fromJson(res.data as Map<String, dynamic>);
  }

  Future<Profile> getCurrentProfile() async {
    final res = await ApiService.client.get('/profiles/me');
    return Profile.fromJson(res.data as Map<String, dynamic>);
  }

  Future<List<Post>> getUserPosts(String userId,
      {int page = 0, int limit = 18}) async {
    final res = await ApiService.client.get(
      '/profiles/$userId/posts',
      queryParameters: {'page': page, 'limit': limit},
    );
    return (res.data as List)
        .map((e) => Post.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> follow(String targetUserId) async {
    await ApiService.client.post('/profiles/$targetUserId/follow');
  }

  Future<void> unfollow(String targetUserId) async {
    await ApiService.client.delete('/profiles/$targetUserId/follow');
  }

  Future<Profile> updateProfile({
    String? displayName,
    String? bio,
    String? website,
    String? location,
    String? avatarUrl,
  }) async {
    final res = await ApiService.client.patch('/profiles/me', data: {
      if (displayName != null) 'displayName': displayName,
      if (bio != null) 'bio': bio,
      if (website != null) 'website': website,
      if (location != null) 'location': location,
      if (avatarUrl != null) 'avatarUrl': avatarUrl,
    });
    return Profile.fromJson(res.data as Map<String, dynamic>);
  }
}

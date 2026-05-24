import '../models/rescue_post.dart';
import '../services/api_service.dart';

class RescueRepository {
  Future<List<RescuePost>> getPosts({
    int page = 0,
    int limit = 20,
    String? status,
  }) async {
    final res = await ApiService.client.get('/rescue', queryParameters: {
      'page': page,
      'limit': limit,
      if (status != null) 'status': status,
    });
    return (res.data as List)
        .map((e) => RescuePost.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<RescuePost> createPost(
      Map<String, dynamic> payload, List<String> imageUrls) async {
    final res = await ApiService.client.post('/rescue', data: {
      ...payload,
      'imageUrls': imageUrls,
    });
    return RescuePost.fromJson(res.data as Map<String, dynamic>);
  }

  Future<RescueUpdate> addUpdate(String postId, String body,
      {RescueStatus? newStatus}) async {
    final res = await ApiService.client.post('/rescue/$postId/updates', data: {
      'body': body,
      if (newStatus != null) 'newStatus': newStatus.name,
    });
    return RescueUpdate.fromJson(res.data as Map<String, dynamic>);
  }

  Future<void> volunteer(String rescuePostId) async {
    await ApiService.client.post('/rescue/$rescuePostId/volunteer');
  }

  Future<void> unvolunteer(String rescuePostId) async {
    await ApiService.client.delete('/rescue/$rescuePostId/volunteer');
  }
}

import '../models/post.dart';
import '../services/api_service.dart';

class FeedRepository {
  Future<List<Post>> getFeed({int page = 0, int limit = 20}) async {
    final res = await ApiService.client.get('/feed', queryParameters: {
      'page': page,
      'limit': limit,
    });
    return (res.data as List)
        .map((e) => Post.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> likePost(String postId) async {
    await ApiService.client.post('/posts/$postId/like');
  }

  Future<void> unlikePost(String postId) async {
    await ApiService.client.delete('/posts/$postId/like');
  }

  Future<void> savePost(String postId) async {
    await ApiService.client.post('/posts/$postId/save');
  }

  Future<void> unsavePost(String postId) async {
    await ApiService.client.delete('/posts/$postId/save');
  }

  Future<List<PostComment>> getComments(String postId) async {
    final res = await ApiService.client.get('/posts/$postId/comments');
    return (res.data as List)
        .map((e) => PostComment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<PostComment> addComment(String postId, String body,
      {String? parentId}) async {
    final res = await ApiService.client.post('/posts/$postId/comments', data: {
      'body': body,
      if (parentId != null) 'parentId': parentId,
    });
    return PostComment.fromJson(res.data as Map<String, dynamic>);
  }
}

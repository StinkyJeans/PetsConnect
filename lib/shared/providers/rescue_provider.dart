import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/rescue_post.dart';
import '../../data/repositories/rescue_repository.dart';

final rescueRepositoryProvider = Provider<RescueRepository>((ref) => RescueRepository());

final rescuePostsProvider = FutureProvider<List<RescuePost>>((ref) async {
  return ref.read(rescueRepositoryProvider).getPosts();
});


class RescueNotifier extends StateNotifier<AsyncValue<List<RescuePost>>> {
  RescueNotifier(this._repo) : super(const AsyncValue.loading()) {
    load();
  }

  final RescueRepository _repo;

  Future<void> load() async {
    state = await AsyncValue.guard(() => _repo.getPosts());
  }

  Future<void> addUpdate(String postId, String body, {RescueStatus? newStatus}) async {
    await _repo.addUpdate(postId, body, newStatus: newStatus);
    await load();
  }

  Future<void> toggleVolunteer(String postId, bool isVolunteering) async {
    if (isVolunteering) {
      await _repo.unvolunteer(postId);
    } else {
      await _repo.volunteer(postId);
    }
    await load();
  }
}

final rescueNotifierProvider =
    StateNotifierProvider<RescueNotifier, AsyncValue<List<RescuePost>>>((ref) {
  return RescueNotifier(ref.read(rescueRepositoryProvider));
});

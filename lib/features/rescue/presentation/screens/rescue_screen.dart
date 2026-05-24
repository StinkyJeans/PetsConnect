import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/rescue_post.dart';
import '../../../../shared/providers/rescue_provider.dart';
import '../widgets/rescue_card.dart';

class RescueScreen extends ConsumerWidget {
  const RescueScreen({super.key});

  static const _urgencyColors = {
    RescueUrgency.critical: Colors.red,
    RescueUrgency.needsHelp: Colors.orange,
    RescueUrgency.safeNow: Colors.green,
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsync = ref.watch(rescuePostsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rescue Board'),
        actions: [
          IconButton(icon: const Icon(Icons.map_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.add), onPressed: () {}),
        ],
      ),
      body: postsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (posts) => posts.isEmpty
            ? const Center(child: Text('No active rescue posts.'))
            : RefreshIndicator(
                onRefresh: () => ref.refresh(rescuePostsProvider.future),
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: posts.length,
                  itemBuilder: (context, i) => RescueCard(
                    post: posts[i],
                    urgencyColor: _urgencyColors[posts[i].urgency] ?? Colors.grey,
                  ),
                ),
              ),
      ),
    );
  }
}

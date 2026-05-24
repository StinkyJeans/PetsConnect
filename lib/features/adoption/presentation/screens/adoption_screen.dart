import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/providers/adoption_provider.dart';
import '../widgets/adoption_card.dart';

class AdoptionScreen extends ConsumerWidget {
  const AdoptionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingsAsync = ref.watch(adoptionListingsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adopt a Pet'),
        actions: [
          IconButton(icon: const Icon(Icons.tune), onPressed: () {}),
          IconButton(icon: const Icon(Icons.add), onPressed: () {}),
        ],
      ),
      body: listingsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (listings) => listings.isEmpty
            ? const Center(child: Text('No pets available for adoption.'))
            : RefreshIndicator(
                onRefresh: () => ref.refresh(adoptionListingsProvider.future),
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: listings.length,
                  itemBuilder: (context, i) => AdoptionCard(listing: listings[i]),
                ),
              ),
      ),
    );
  }
}

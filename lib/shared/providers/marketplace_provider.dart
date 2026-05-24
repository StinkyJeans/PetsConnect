import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/marketplace_listing.dart';
import '../../data/repositories/marketplace_repository.dart';

final marketplaceRepositoryProvider =
    Provider<MarketplaceRepository>((ref) => MarketplaceRepository());


final marketplaceListingsProvider = FutureProvider<List<MarketplaceListing>>((ref) async {
  return ref.read(marketplaceRepositoryProvider).getListings();
});

// Filtered listings
class MarketplaceFilter {
  const MarketplaceFilter({this.categoryId, this.searchQuery, this.maxPrice});
  final String? categoryId;
  final String? searchQuery;
  final double? maxPrice;
}

final marketplaceFilterProvider = StateProvider<MarketplaceFilter>(
  (ref) => const MarketplaceFilter(),
);

final filteredListingsProvider = FutureProvider<List<MarketplaceListing>>((ref) async {
  final filter = ref.watch(marketplaceFilterProvider);
  return ref.read(marketplaceRepositoryProvider).getListings(
        categoryId: filter.categoryId,
        searchQuery: filter.searchQuery,
        maxPrice: filter.maxPrice,
      );
});

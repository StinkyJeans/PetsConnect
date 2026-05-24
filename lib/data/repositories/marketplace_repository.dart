import '../models/marketplace_listing.dart';
import '../services/api_service.dart';

class MarketplaceRepository {
  Future<List<MarketplaceListing>> getListings({
    int page = 0,
    int limit = 20,
    String? categoryId,
    String? searchQuery,
    double? maxPrice,
  }) async {
    final res = await ApiService.client.get('/marketplace', queryParameters: {
      'page': page,
      'limit': limit,
      if (categoryId != null) 'categoryId': categoryId,
      if (searchQuery != null && searchQuery.isNotEmpty) 'search': searchQuery,
      if (maxPrice != null) 'maxPrice': maxPrice,
    });
    return (res.data as List)
        .map((e) => MarketplaceListing.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<MarketplaceListing> createListing(
      Map<String, dynamic> payload, List<String> imageUrls) async {
    final res = await ApiService.client.post('/marketplace', data: {
      ...payload,
      'imageUrls': imageUrls,
    });
    return MarketplaceListing.fromJson(res.data as Map<String, dynamic>);
  }

  Future<void> deleteListing(String listingId) async {
    await ApiService.client.delete('/marketplace/$listingId');
  }
}

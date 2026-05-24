import '../models/adoption_listing.dart';
import '../services/api_service.dart';

class AdoptionRepository {
  Future<List<AdoptionListing>> getListings({
    int page = 0,
    int limit = 20,
    String? animalType,
    String? gender,
    String? size,
  }) async {
    final res = await ApiService.client.get('/adoption', queryParameters: {
      'page': page,
      'limit': limit,
      if (animalType != null) 'animalType': animalType,
      if (gender != null) 'gender': gender,
      if (size != null) 'size': size,
    });
    return (res.data as List)
        .map((e) => AdoptionListing.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<AdoptionRequest> submitRequest(Map<String, dynamic> payload) async {
    final listingId = payload['listing_id'] ?? payload['listingId'];
    final res = await ApiService.client
        .post('/adoption/$listingId/request', data: payload);
    return AdoptionRequest.fromJson(res.data as Map<String, dynamic>);
  }

  Future<void> saveListing(String listingId) async {
    await ApiService.client.post('/adoption/$listingId/save');
  }

  Future<void> unsaveListing(String listingId) async {
    await ApiService.client.delete('/adoption/$listingId/save');
  }
}

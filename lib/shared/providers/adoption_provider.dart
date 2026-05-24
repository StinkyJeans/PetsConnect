import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/adoption_listing.dart';
import '../../data/repositories/adoption_repository.dart';

final adoptionRepositoryProvider =
    Provider<AdoptionRepository>((ref) => AdoptionRepository());

final adoptionListingsProvider = FutureProvider<List<AdoptionListing>>((ref) async {
  return ref.read(adoptionRepositoryProvider).getListings();
});


class AdoptionFilter {
  const AdoptionFilter({this.animalType, this.gender, this.size});
  final String? animalType;
  final String? gender;
  final String? size;
}

final adoptionFilterProvider = StateProvider<AdoptionFilter>(
  (ref) => const AdoptionFilter(),
);

final filteredAdoptionListingsProvider = FutureProvider<List<AdoptionListing>>((ref) async {
  final filter = ref.watch(adoptionFilterProvider);
  return ref.read(adoptionRepositoryProvider).getListings(
        animalType: filter.animalType,
        gender: filter.gender,
        size: filter.size,
      );
});

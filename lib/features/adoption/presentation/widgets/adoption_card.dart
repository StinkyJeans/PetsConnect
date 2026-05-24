import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/adoption_listing.dart';

class AdoptionCard extends StatelessWidget {
  const AdoptionCard({super.key, required this.listing});

  final AdoptionListing listing;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: listing.imageUrls.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: listing.imageUrls.first,
                      fit: BoxFit.cover,
                      placeholder: (_, _) => Container(color: Colors.grey.shade200),
                    )
                  : Container(
                      color: Colors.grey.shade200,
                      child: const Icon(Icons.pets, size: 48),
                    ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(listing.petName,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            )),
                    const SizedBox(height: 4),
                    Text(
                      [
                        listing.breed ?? listing.animalType.name,
                        if (listing.ageYears != null) '${listing.ageYears}y',
                        listing.gender.name,
                      ].join(' · '),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    if (listing.location != null) ...[
                      const SizedBox(height: 4),
                      Row(children: [
                        const Icon(Icons.location_on_outlined, size: 14),
                        const SizedBox(width: 2),
                        Expanded(
                          child: Text(listing.location!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.labelSmall),
                        ),
                      ]),
                    ],
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        if (listing.isVaccinated)
                          badge(context, 'Vaccinated', Colors.green),
                        if (listing.isNeutered)
                          badge(context, 'Neutered', Colors.blue),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget badge(BuildContext context, String label, Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withAlpha(30),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withAlpha(80)),
      ),
      child: Text(label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(color: color)),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../data/models/rescue_post.dart';

class RescueCard extends StatelessWidget {
  const RescueCard({super.key, required this.post, required this.urgencyColor});

  final RescuePost post;
  final Color urgencyColor;

  static const _urgencyLabels = {
    RescueUrgency.critical: 'CRITICAL',
    RescueUrgency.needsHelp: 'NEEDS HELP',
    RescueUrgency.safeNow: 'SAFE NOW',
  };

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Urgency badge + time
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color: urgencyColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      _urgencyLabels[post.urgency] ?? '',
                      style: const TextStyle(
                          color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  if (post.createdAt != null)
                    Text(timeago.format(post.createdAt!),
                        style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
              const SizedBox(height: 8),

              // Title
              Text(post.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),

              if (post.description != null) ...[
                const SizedBox(height: 4),
                Text(post.description!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall),
              ],

              // Image
              if (post.imageUrls.isNotEmpty) ...[
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: post.imageUrls.first,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (_, _) => Container(height: 180, color: Colors.grey.shade200),
                  ),
                ),
              ],

              // Location + volunteers
              const SizedBox(height: 8),
              Row(
                children: [
                  if (post.location != null) ...[
                    const Icon(Icons.location_on_outlined, size: 14),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Text(post.location!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelSmall),
                    ),
                  ],
                  const Spacer(),
                  const Icon(Icons.volunteer_activism_outlined, size: 14),
                  const SizedBox(width: 2),
                  Text('${post.volunteerCount} volunteers',
                      style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

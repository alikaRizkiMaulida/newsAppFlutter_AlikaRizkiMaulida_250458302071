import 'package:flutter/material.dart';
import 'package:news/main.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Ink(
        height: 168,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: MainApp.nightPurple,
        ),
        child: Stack(
          children: [
            Positioned(
              right: -30,
              top: -30,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: MainApp.lightPurple.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 18,
              right: 18,
              top: 18,
              bottom: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: MainApp.lightPurple.withValues(alpha: 0.18),
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(
                        color: MainApp.lightPurple.withValues(alpha: 0.25),
                      ),
                    ),
                    child: Text(
                      title.toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: MainApp.lightPurple,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: MainApp.lightPurple,
                      fontWeight: FontWeight.w800,
                      height: 1.15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule_rounded,
                        color: MainApp.lightPurple.withValues(alpha: 0.6),
                        size: 18,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'baca 5 menit',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: MainApp.lightPurple.withValues(alpha: 0.8),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: MainApp.lightPurple,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                          color: MainApp.nightPurple,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_routes.dart';
import '../../../core/colors.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Meditation',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 14),

            // Hero / Daily Pick (with image)
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                border:
                    Border.all(color: AppColors.whiteColor.withValues(alpha: 0.06)),
                image: const DecorationImage(
                  image: AssetImage('assets/images/meditate.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // Dark overlay for readability
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.blackColor.withValues(alpha: 0.30),
                            AppColors.blackColor.withValues(alpha: 0.65),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // DAILY PICK badge
                  Positioned(
                    left: 16,
                    top: 60,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 7),
                      decoration: BoxDecoration(
                        color: AppColors.redColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'DAILY PICK',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                    ),
                  ),

                  // Title + meta
                  const Positioned(
                    left: 16,
                    bottom: 18,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Morning Clarity',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '10 min  •  Grounding',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  // Play button (white circle)
                  Positioned(
                    right: 16,
                    bottom: 18,
                    child: GestureDetector(
                      onTap: () => context.go(AppRoutes.playerPath),
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.play_arrow,
                            color: AppColors.blackColor, size: 28),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),

            const Text(
              'Library',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 12),

            _libraryTile(
              context,
              title: 'Morning Clarity',
              subtitle: '10 min  •  Sleep',
              imagePath: 'assets/images/morning-clarity.png',
              locked: false,
              onTap: () => context.go(AppRoutes.playerPath),
            ),

            const SizedBox(height: 12),

            _libraryTile(
              context,
              title: 'Deep Sleep',
              subtitle: '25 min  •  Sleep',
              imagePath: 'assets/images/deep-sleep.png',
              locked: true,
              onTap: () {}, // locked
            ),

            const SizedBox(height: 12),

            _libraryTile(
              context,
              title: 'Anxiety Release',
              subtitle: '15 min  •  Sleep',
              imagePath: 'assets/images/anxiety-release.png',
              locked: true,
              onTap: () {}, // locked
            ),
          ],
        ),
      ),
    );
  }

  Widget _libraryTile(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String imagePath,
    required bool locked,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: locked ? null : onTap,
      child: Container(
        height: 92, // bigger like Figma
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: AppColors.whiteColor.withValues(alpha: 0.06)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: Row(
          children: [
            // Thumbnail
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    height: 62,
                    width: 62,
                    fit: BoxFit.cover,
                    color:
                        locked ? AppColors.blackColor.withValues(alpha: 0.45) : null,
                    colorBlendMode: locked ? BlendMode.darken : null,
                  ),
                  if (locked)
                    Positioned.fill(
                      child: Container(
                        color: AppColors.blackColor.withValues(alpha: 0.35),
                        child: Center(
                          child: Icon(
                            Icons.lock_outline,
                            color: AppColors.whiteColor.withValues(alpha: 0.55),
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(width: 14),

            // Texts
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: locked
                          ? AppColors.whiteColor.withValues(alpha: 0.45)
                          : AppColors.whiteColor.withValues(alpha: 0.95),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: locked
                          ? AppColors.whiteColor.withValues(alpha: 0.32)
                          : AppColors.whiteColor.withValues(alpha: 0.55),
                    ),
                  ),
                ],
              ),
            ),

            // Play circle
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: locked
                      ? AppColors.whiteColor.withValues(alpha: 0.18)
                      : AppColors.redColor,
                  width: 1.6,
                ),
                color: locked ? Colors.transparent : Colors.transparent,
              ),
              child: Icon(
                Icons.play_arrow,
                color: locked
                    ? AppColors.whiteColor.withValues(alpha: 0.18)
                    : AppColors.redColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

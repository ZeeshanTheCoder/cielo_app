import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_routes.dart';
import '../../../core/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar
            Container(
              height: 92,
              width: 92,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: AppColors.redColor.withOpacity(0.55), width: 2),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/avatar.png', // change if your file name differs
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) {
                    // fallback if image missing
                    return Container(
                      color: AppColors.blueColor,
                      child: Icon(Icons.person,
                          color: AppColors.whiteColor.withOpacity(0.7),
                          size: 40),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 14),

            const Text(
              'Alex Morgan',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 6),
            Text(
              'alex.morgan@example.com',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.whiteColor.withOpacity(0.55),
              ),
            ),

            const SizedBox(height: 14),

            // Edit Profile + Settings icon row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 44,
                  width: 170,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: AppColors.redColor.withOpacity(0.9),
                          width: 1.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                    ),
                    onPressed: () => context.go(AppRoutes.editProfilePath),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: AppColors.whiteColor.withOpacity(0.06)),
                  ),
                  child: IconButton(
                    onPressed: () => context.go(AppRoutes.subscriptionPath),
                    icon: Icon(Icons.settings,
                        color: AppColors.whiteColor.withOpacity(0.75)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            // Cielo Pro Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(26),
                border:
                    Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title row
                  Row(
                    children: [
                      Text(
                        'Cielo Pro',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily:
                              'PlayfairDisplay', // needs font in pubspec
                        ),
                      ),
                      const SizedBox(width: 8),
                      _ProPill(),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'Unlock unlimited mood analysis, dream\ninterpretation, and exclusive\nmeditations.',
                    style: TextStyle(
                      color: AppColors.whiteColor.withOpacity(0.60),
                      height: 1.35,
                    ),
                  ),

                  const SizedBox(height: 14),

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      onPressed: () => context.go(AppRoutes.upgrade),
                      child: const Text(
                        'Upgrade for \$9/mo',
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Section tiles
            _SettingTile(
              icon: Icons.person_outline,
              title: 'Personal Details',
              onTap: () => context.go(AppRoutes.editProfilePath),
            ),
            const SizedBox(height: 12),
            _SettingTile(
              icon: Icons.settings_outlined,
              title: 'App Settings',
              onTap: () => context.go(AppRoutes.subscriptionPath),
            ),

            const SizedBox(height: 18),

            // Bottom buttons row
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      onPressed: () {
                        // later: auth sign out
                      },
                      child: const Text(
                        'Sign Out',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      onPressed: () => context.go(AppRoutes.deleteConfirm),
                      child: const Text(
                        'Delete Account',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),

            Text(
              'Version 1.0.2 (Build 240)',
              style: TextStyle(color: AppColors.whiteColor.withOpacity(0.35)),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProPill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: AppColors.greenColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
              image: AssetImage('assets/icons/pro.png'),
              height: 14,
              color: AppColors.whiteColor),
          SizedBox(width: 6),
          Text(
            'PRO',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingTile extends StatelessWidget {
  const _SettingTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: Container(
        height: 62,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Icon(icon, color: AppColors.whiteColor.withOpacity(0.65)),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
              ),
            ),
            Icon(Icons.chevron_right,
                color: AppColors.whiteColor.withOpacity(0.35)),
          ],
        ),
      ),
    );
  }
}

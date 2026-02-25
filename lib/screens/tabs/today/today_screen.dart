import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../components/cielo_ui.dart';
import '../../../core/app_routes.dart';
import '../../../core/colors.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Text(
                    'Good evening, User',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                ),
                _Pill(
                  text: 'FREE',
                  bg: AppColors.blueColor,
                  fg: AppColors.greyColor,
                ),
              ],
            ),

            const SizedBox(height: 6),

            const Text(
              'Here is your daily affirmation to guide you.',
              style: TextStyle(color: CieloUI.textDim, fontSize: 14),
            ),

            const SizedBox(height: 20),

            // New pill with refresh icon
            Container(
              height: 46,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(18),
                border:
                    Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(18),
                onTap: () {
                  // Later: trigger new affirmation
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/refresh.png'),
                    SizedBox(width: 10),
                    Text(
                      'New',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 14),

            // Affirmation card
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/galaxy.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(26),
                border:
                    Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
              ),
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  'I stay balanced, \ndisciplined, and \nconsistent, creating\n  success and peace in \nmy life',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteColor.withOpacity(0.95),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Text(
              'Explore',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: AppColors.whiteColor.withOpacity(0.9),
              ),
            ),

            const SizedBox(height: 10),

            // Explore card (Figma structure)
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(22),
                border:
                    Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Row 1: lock + title + PRO badge
                  Row(
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Image(
                          image: AssetImage('assets/icons/lock.png'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Daily Insight',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                      ),
                      _ProBadge(),
                    ],
                  ),

                  const SizedBox(height: 18),

                  // Row 2: subtitle
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Get daily guidance based on your zodiac\nand mood.',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 12,
                        height: 1.35,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Row 3: red outlined button
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: AppColors.redColor.withOpacity(0.9),
                            width: 1.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () => context.go(AppRoutes.upgrade),
                      child: const Text(
                        'Upgrade to Unlock',
                        style: TextStyle(
                          color: AppColors.redColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
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

class _Pill extends StatelessWidget {
  const _Pill({required this.text, required this.bg, required this.fg});

  final String text;
  final Color bg;
  final Color fg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: fg),
      ),
    );
  }
}

class _ProBadge extends StatelessWidget {
  const _ProBadge();

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

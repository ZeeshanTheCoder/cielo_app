import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_routes.dart';
import '../../../core/colors.dart';

class DreamScreen extends StatelessWidget {
  const DreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dream Journal',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 6),
            Text(
              'Decode your subconscious mind.',
              style: TextStyle(
                color: AppColors.whiteColor.withOpacity(0.55),
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 16),

            // Unlock CTA card (Figma)
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
              ),
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  // inner panel
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 100.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // lock icon (center)
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: AppColors.blackColor.withOpacity(0.20),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.whiteColor.withOpacity(0.08),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icons/lock.png',
                              height: 22,
                              color: AppColors.redColor,
                            ),
                          ),
                        ),

                        const SizedBox(height: 14),

                        const Text(
                          'Unlock Dream Analysis',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: AppColors.whiteColor,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                          'Record your dreams and let Cielo\nAI interpret their hidden meanings\nand symbols.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.35,
                            color: AppColors.whiteColor.withOpacity(0.6),
                          ),
                        ),

                        const SizedBox(height: 18),

                        SizedBox(
                          width: 190,
                          height: 46,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.redColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: () => context.go(AppRoutes.upgrade),
                            child: const Text(
                              'Unlock with Pro',
                              style: TextStyle(
                                color: AppColors.whiteColor,
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_routes.dart';
import '../../../core/colors.dart';

class MoodScreen extends StatefulWidget {
  const MoodScreen({super.key});

  @override
  State<MoodScreen> createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  int selected = 0;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const moods = [
      ('Stressed', '😣'),
      ('Down', '😔'),
      ('Okay', '😐'),
      ('Good', '🙂'),
      ('Great', '🤩'),
    ];

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mood Journal',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 6),
            Text(
              'Reflect on your day and gain new insights.',
              style: TextStyle(
                  color: AppColors.whiteColor.withOpacity(0.55), fontSize: 14),
            ),
            const SizedBox(height: 14),

            // Main card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(26),
                border:
                    Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
              ),
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How are you feeling?',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 14),

                  // Mood row (emoji text)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(moods.length, (i) {
                      final isSel = i == selected;

                      return GestureDetector(
                        onTap: () => setState(() => selected = i),
                        child: Column(
                          children: [
                            Container(
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.whiteColor.withOpacity(0.05),
                                border: Border.all(
                                  color: isSel
                                      ? AppColors.redColor
                                      : Colors.transparent,
                                  width: 2,
                                ),
                                boxShadow: isSel
                                    ? [
                                        BoxShadow(
                                          color: AppColors.redColor
                                              .withOpacity(0.25),
                                          blurRadius: 18,
                                        )
                                      ]
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  moods[i].$2,
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              moods[i].$1,
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.whiteColor.withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 16),

                  // Textbox (fix: full width & proper height)
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColors.blackColor.withOpacity(0.22),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          color: AppColors.whiteColor.withOpacity(0.06)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    child: TextField(
                      controller: _controller,
                      maxLines: null,
                      expands: true,
                      style: TextStyle(
                          color: AppColors.whiteColor.withOpacity(0.9)),
                      decoration: InputDecoration(
                        hintText: 'Today I felt...',
                        hintStyle: TextStyle(
                            color: AppColors.whiteColor.withOpacity(0.35)),
                        border: InputBorder.none,
                        isCollapsed: true,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Save Entry button with magic icon
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      onPressed: () => context.go(AppRoutes.moodSentimentPath),
                      icon: Image.asset(
                        'assets/icons/magic.png', // change path if needed
                        height: 18,
                        color: AppColors.whiteColor,
                      ),
                      label: const Text(
                        'Save Entry',
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Sentiment Analysis Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(26),
                border:
                    Border.all(color: AppColors.whiteColor.withOpacity(0.06)),
              ),
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sentiment Analysis',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          color: AppColors.whiteColor.withOpacity(0.06)),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/chart.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.blackColor.withOpacity(0.55),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: AppColors.redColor.withOpacity(0.9),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/icons/lock-white.png', // change path if needed
                                height: 22,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Unlock Mood Analytics',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Track your emotional patterns over time.',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.whiteColor.withOpacity(0.6),
                              ),
                            ),
                          ],
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

import 'package:flutter/material.dart';
import '../../../components/cielo_ui.dart';
import '../../../core/colors.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  bool showTranscript = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).maybePop(),
                    icon: const Icon(Icons.arrow_back,
                        color: AppColors.whiteColor),
                  ),
                ],
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withValues(alpha: 0.06),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Morning Clarity',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),
              const SizedBox(height: 6),
              const Text('Guided Meditation',
                  style: TextStyle(color: CieloUI.textDim)),
              const SizedBox(height: 18),
              Row(
                children: [
                  Text('02:14',
                      style: TextStyle(
                          color: AppColors.whiteColor.withValues(alpha: 0.6))),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 6,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text('10 min',
                      style: TextStyle(
                          color: AppColors.whiteColor.withValues(alpha: 0.6))),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.skip_previous,
                      size: 34, color: AppColors.whiteColor.withValues(alpha: 0.55)),
                  const SizedBox(width: 18),
                  Container(
                    height: 78,
                    width: 78,
                    decoration: const BoxDecoration(
                      color: AppColors.redColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.play_arrow,
                        size: 36, color: AppColors.whiteColor),
                  ),
                  const SizedBox(width: 18),
                  Icon(Icons.skip_next,
                      size: 34, color: AppColors.whiteColor.withValues(alpha: 0.55)),
                ],
              ),
              const SizedBox(height: 16),
              TextButton.icon(
                onPressed: () =>
                    setState(() => showTranscript = !showTranscript),
                icon: const Icon(Icons.description_outlined,
                    color: AppColors.whiteColor),
                label: Text(
                  showTranscript ? 'Hide Transcript' : 'Show Transcript',
                  style: const TextStyle(color: AppColors.whiteColor),
                ),
              ),
              const SizedBox(height: 12),
              if (showTranscript)
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: CieloUI.card(),
                    padding: const EdgeInsets.all(16),
                    child: const SingleChildScrollView(
                      child: Text(
                        'Transcript (placeholder)\n\nWelcome to this session of Morning Clarity...\nCard 3.2 scope: UI only.',
                        style: TextStyle(color: Colors.white70, height: 1.4),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../components/cielo_ui.dart';
import '../../../core/colors.dart';

class DreamAnalysisScreen extends StatelessWidget {
  const DreamAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text('Dream Journal',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700)),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).maybePop(),
                    child: Text('Close',
                        style: TextStyle(
                            color: AppColors.whiteColor.withOpacity(0.7))),
                  )
                ],
              ),
              const SizedBox(height: 6),
              const Text('Dream Analysis',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
              const SizedBox(height: 14),
              Container(
                decoration: CieloUI.card(),
                padding: const EdgeInsets.all(16),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: AppColors.blueColor,
                      child:
                          Icon(Icons.monitor_heart, color: AppColors.redColor),
                    ),
                    SizedBox(width: 12),
                    Text('Foundational',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Expanded(
                child: Container(
                  decoration: CieloUI.card(),
                  padding: const EdgeInsets.all(16),
                  child: const SingleChildScrollView(
                    child: Text(
                      'Placeholder dream analysis text for Card 3.2.\n\nKey Symbols section can be expanded later.',
                      style: TextStyle(color: CieloUI.textDim, height: 1.4),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side:
                        BorderSide(color: AppColors.redColor.withOpacity(0.8)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: () => Navigator.of(context).maybePop(),
                  child: const Text(
                    'Analyze Another Dream',
                    style: TextStyle(
                        color: AppColors.redColor, fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

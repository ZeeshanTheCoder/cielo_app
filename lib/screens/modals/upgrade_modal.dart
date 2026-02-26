import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../components/cielo_ui.dart';

class UpgradeModal extends StatelessWidget {
  const UpgradeModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.of(context).maybePop(),
                  child: Text('Close',
                      style: TextStyle(
                          color: AppColors.whiteColor.withValues(alpha: 0.7))),
                ),
              ),
              const SizedBox(height: 8),
              const Text('Upgrade to Pro',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),
              const SizedBox(height: 10),
              const Text(
                'Unlock advanced analysis, dream interpretation, and exclusive content.',
                style: TextStyle(color: CieloUI.textDim),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: CieloUI.card(),
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Pro benefits list placeholder (Card 3.2).',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.redColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  onPressed: () => Navigator.of(context).maybePop(),
                  child: const Text('Unlock with Pro',
                      style: TextStyle(fontWeight: FontWeight.w900)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

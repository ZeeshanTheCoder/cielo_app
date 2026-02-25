import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../components/cielo_ui.dart';

class OnboardingModal extends StatelessWidget {
  const OnboardingModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const Spacer(),
              const Text('Welcome to Cielo',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
              const SizedBox(height: 10),
              const Text('Onboarding modal placeholder (Card 3.2).',
                  style: TextStyle(color: CieloUI.textDim)),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.redColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: () => Navigator.of(context).maybePop(),
                  child: const Text('Get Started',
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

import 'package:flutter/material.dart';
import '../../../components/cielo_ui.dart';
import '../../../core/colors.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

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
              IconButton(
                onPressed: () => Navigator.of(context).maybePop(),
                icon: const Icon(Icons.arrow_back, color: AppColors.whiteColor),
              ),
              const SizedBox(height: 6),
              const Text('Subscription',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),
              const SizedBox(height: 14),
              Container(
                decoration: CieloUI.card(),
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Placeholder subscription screen (Card 3.2).\n\nLater: IAP / RevenueCat integration.',
                  style: TextStyle(color: CieloUI.textDim, height: 1.4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

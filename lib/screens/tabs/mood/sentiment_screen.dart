import 'package:flutter/material.dart';
import '../../../components/cielo_ui.dart';
import '../../../core/colors.dart';

class SentimentScreen extends StatelessWidget {
  const SentimentScreen({super.key});

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
                    child: Text('Sentiment Analysis',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Text(
                      'PRO',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: AppColors.blackColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 6),
              const Text('AI-powered pro insights into your entry.',
                  style: TextStyle(color: CieloUI.textDim)),
              const SizedBox(height: 18),
              Container(
                decoration: CieloUI.card(),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Overall Sentiment',
                        style: TextStyle(color: CieloUI.textDim)),
                    SizedBox(height: 8),
                    Text('Positive',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          color: AppColors.redColor,
                        )),
                    SizedBox(height: 14),
                    Text('Deeper Analysis',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    SizedBox(height: 8),
                    Text(
                      'Placeholder analysis text (Card 3.2).',
                      style: TextStyle(color: CieloUI.textDim, height: 1.35),
                    )
                  ],
                ),
              ),
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
                  child: const Text('Done',
                      style: TextStyle(fontWeight: FontWeight.w800)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

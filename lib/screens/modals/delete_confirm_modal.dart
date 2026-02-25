import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../../components/cielo_ui.dart';

class DeleteConfirmModal extends StatelessWidget {
  const DeleteConfirmModal({super.key});

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
              Container(
                decoration: CieloUI.card(),
                padding: const EdgeInsets.all(18),
                child: const Column(
                  children: [
                    Icon(Icons.warning_amber_rounded,
                        color: AppColors.redColor, size: 40),
                    SizedBox(height: 10),
                    Text('Delete Account?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900)),
                    SizedBox(height: 8),
                    Text('This action cannot be undone.',
                        style: TextStyle(color: CieloUI.textDim)),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: AppColors.whiteColor.withOpacity(0.18)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onPressed: () => Navigator.of(context).maybePop(),
                      child: const Text('Cancel',
                          style: TextStyle(color: AppColors.whiteColor)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onPressed: () => Navigator.of(context).maybePop(),
                      child: const Text('Delete',
                          style: TextStyle(fontWeight: FontWeight.w900)),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

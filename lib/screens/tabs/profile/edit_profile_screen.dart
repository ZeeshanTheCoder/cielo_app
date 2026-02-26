import 'package:flutter/material.dart';
import '../../../core/colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    InputDecoration deco(String hint, IconData icon) => InputDecoration(
          prefixIcon: Icon(icon, color: AppColors.whiteColor.withValues(alpha: 0.54)),
          hintText: hint,
          hintStyle: TextStyle(color: AppColors.whiteColor.withValues(alpha: 0.38)),
          filled: true,
          fillColor: AppColors.blueColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                BorderSide(color: AppColors.whiteColor.withValues(alpha: 0.06)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                BorderSide(color: AppColors.whiteColor.withValues(alpha: 0.06)),
          ),
        );

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
                  IconButton(
                    onPressed: () => Navigator.of(context).maybePop(),
                    icon: const Icon(Icons.arrow_back,
                        color: AppColors.whiteColor),
                  ),
                  const SizedBox(width: 6),
                  const Text('Edit Profile',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 92,
                      width: 92,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: AppColors.whiteColor.withValues(alpha: 0.12),
                            width: 2),
                        color: AppColors.whiteColor.withValues(alpha: 0.06),
                      ),
                      child: Icon(Icons.person,
                          size: 42,
                          color: AppColors.whiteColor.withValues(alpha: 0.7)),
                    ),
                    const Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.redColor,
                        child: Icon(Icons.camera_alt,
                            size: 16, color: AppColors.whiteColor),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Text('DISPLAY NAME',
                  style: TextStyle(
                      color: AppColors.redColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 12)),
              const SizedBox(height: 8),
              TextField(decoration: deco('Alex Morgan', Icons.person_outline)),
              const SizedBox(height: 14),
              const Text('EMAIL ADDRESS',
                  style: TextStyle(
                      color: AppColors.redColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 12)),
              const SizedBox(height: 8),
              TextField(
                  decoration:
                      deco('alex.morgan@example.com', Icons.mail_outline)),
              const SizedBox(height: 14),
              const Text('ZODIAC SIGN',
                  style: TextStyle(
                      color: AppColors.redColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 12)),
              const SizedBox(height: 8),
              TextField(
                readOnly: true,
                decoration: deco('Leo', Icons.star_outline).copyWith(
                  suffixIcon: Icon(Icons.chevron_right,
                      color: AppColors.whiteColor.withValues(alpha: 0.38)),
                ),
              ),
              const SizedBox(height: 14),
              const Text('DATE OF BIRTH',
                  style: TextStyle(
                      color: AppColors.redColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 12)),
              const SizedBox(height: 8),
              TextField(
                  readOnly: true,
                  decoration:
                      deco('1999-01-01', Icons.calendar_month_outlined)),
              const SizedBox(height: 14),
              const Text('LANGUAGE',
                  style: TextStyle(
                      color: AppColors.redColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 12)),
              const SizedBox(height: 8),
              TextField(
                readOnly: true,
                decoration: deco('English', Icons.language).copyWith(
                  suffixIcon: Icon(Icons.chevron_right,
                      color: AppColors.whiteColor.withValues(alpha: 0.38)),
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
                  child: const Text('Save Changes',
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

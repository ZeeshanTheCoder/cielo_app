import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.primaryColor,
      primaryColor: AppColors.primaryColor,

      // ✅ Fixed: removed deprecated background/onBackground
      colorScheme: const ColorScheme.dark(
        primary: AppColors.greenColor,
        secondary: AppColors.blueColor,
        error: AppColors.redColor,

        // Use surface instead of background (background is deprecated)
        surface: AppColors.blueColor,
        onSurface: AppColors.whiteColor,

        onPrimary: AppColors.blackColor,
        onSecondary: AppColors.whiteColor,
        onError: AppColors.whiteColor,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: AppColors.greyColor,
          fontSize: 14,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenColor,
          foregroundColor: AppColors.blackColor,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.blueColor,
        hintStyle: const TextStyle(color: AppColors.greyColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

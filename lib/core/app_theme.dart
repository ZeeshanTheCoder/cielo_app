import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF05050A),
      fontFamily: 'SF Pro Display',
      useMaterial3: true,
    );
  }
}

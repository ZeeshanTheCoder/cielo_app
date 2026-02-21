import 'package:flutter/material.dart';
import 'core/theme.dart';

void main() {
  runApp(const CieloApp());
}

class CieloApp extends StatelessWidget {
  const CieloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cielo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      home: const SplashShell(),
    );
  }
}

class SplashShell extends StatelessWidget {
  const SplashShell({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Cielo App Initialized',
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'core/app_router.dart';
import 'core/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CieloApp());
}

class CieloApp extends StatelessWidget {
  const CieloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
    routerConfig: AppRouter.router,
    );
  }
}

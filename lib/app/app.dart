import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../features/splash/splash_screen.dart';
import '../features/theme_mode/providers/theme_provider.dart';
import 'theme/app_theme.dart';

class ProjectXApp extends StatelessWidget {
  const ProjectXApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project X',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const SplashScreen(),
    );
  }
}

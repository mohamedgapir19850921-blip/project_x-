import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.error,
      surface: AppColors.lightSurface,
    );

    return ThemeData(
      useMaterial3: true,
      fontFamily: AppTextStyles.fontFamily,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.lightBackground,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.lightBackground,
        foregroundColor: AppColors.lightTextPrimary,
      ),
      cardColor: AppColors.lightSurface,
      dividerColor: AppColors.lightBorder,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.lightTextSecondary,
        backgroundColor: AppColors.lightSurface,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
      textTheme: TextTheme(
        headlineLarge:
            AppTextStyles.headingLarge(AppColors.lightTextPrimary),
        headlineMedium:
            AppTextStyles.headingMedium(AppColors.lightTextPrimary),
        titleMedium: AppTextStyles.title(AppColors.lightTextPrimary),
        bodyMedium: AppTextStyles.body(AppColors.lightTextPrimary),
        bodySmall: AppTextStyles.label(AppColors.lightTextSecondary),
      ),
    );
  }

  static ThemeData get darkTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.error,
      surface: AppColors.darkSurface,
    );

    return ThemeData(
      useMaterial3: true,
      fontFamily: AppTextStyles.fontFamily,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.darkBackground,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.darkBackground,
        foregroundColor: AppColors.darkTextPrimary,
      ),
      cardColor: AppColors.darkCard,
      dividerColor: AppColors.darkBorder,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.darkTextSecondary,
        backgroundColor: AppColors.darkSurface,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
      textTheme: TextTheme(
        headlineLarge:
            AppTextStyles.headingLarge(AppColors.darkTextPrimary),
        headlineMedium:
            AppTextStyles.headingMedium(AppColors.darkTextPrimary),
        titleMedium: AppTextStyles.title(AppColors.darkTextPrimary),
        bodyMedium: AppTextStyles.body(AppColors.darkTextPrimary),
        bodySmall: AppTextStyles.label(AppColors.darkTextSecondary),
      ),
    );
  }
}

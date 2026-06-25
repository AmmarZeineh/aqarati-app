import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aqarati_app/core/theme/app_colors.dart';

final class AppTheme {
  const AppTheme._();

  static ThemeData light(Locale locale) {
    final fontFamily = _fontFamily(locale);

    final cs = ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
      surface: AppColors.lightScaffold,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: cs,
      fontFamily: fontFamily,

      scaffoldBackgroundColor: cs.surface,

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryColor,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: cs.surface,
        elevation: 0,
        foregroundColor: cs.onSurface,
      ),

      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  static ThemeData dark(Locale locale) {
    final fontFamily = _fontFamily(locale);

    final cs = ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
      surface: AppColors.darkScaffold,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: cs,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: cs.surface,

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryColor,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: cs.surface,
        elevation: 0,
        foregroundColor: cs.onSurface,
      ),

      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  static String? _fontFamily(Locale locale) {
    final isArabic = locale.languageCode == 'ar';
    return isArabic
        ? GoogleFonts.cairo().fontFamily
        : GoogleFonts.poppins().fontFamily;
  }
}

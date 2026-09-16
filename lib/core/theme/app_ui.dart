import 'package:flutter/material.dart';

class AppUi {
  static const EdgeInsets pagePadding = EdgeInsets.all(16);
  static const EdgeInsets sectionPadding = EdgeInsets.all(18);

  static const double gapXs = 6;
  static const double gapSm = 12;
  static const double gapMd = 18;
  static const double gapLg = 24;

  static const double radiusMd = 18;
  static const double radiusLg = 22;
  static const double radiusXl = 28;

  static BorderRadius brMd = BorderRadius.circular(radiusMd);
  static BorderRadius brLg = BorderRadius.circular(radiusLg);
  static BorderRadius brXl = BorderRadius.circular(radiusXl);

  static Color softPrimary(BuildContext context) {
    return Theme.of(context).colorScheme.primary.withOpacity(0.12);
  }

  static Color softNeutral(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark
        ? Colors.white.withOpacity(0.06)
        : Colors.black.withOpacity(0.04);
  }

  static BoxDecoration cardDecoration(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).cardColor,
      borderRadius: brLg,
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.black.withOpacity(0.18)
              : Colors.black.withOpacity(0.05),
          blurRadius: 16,
          offset: const Offset(0, 6),
        ),
      ],
    );
  }

  static BoxDecoration softCardDecoration(
    BuildContext context, {
    Color? color,
  }) {
    return BoxDecoration(
      color: color ?? softNeutral(context),
      borderRadius: brLg,
    );
  }

  static TextStyle sectionTitleStyle = const TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );

  static TextStyle sectionSubtitleStyle = const TextStyle(
    fontSize: 13,
    color: Colors.grey,
  );
}

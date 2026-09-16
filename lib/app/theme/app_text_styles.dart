import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const String fontFamily = 'Cairo';

  static TextStyle headingLarge(Color color) => TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle headingMedium(Color color) => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle title(Color color) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle body(Color color) => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle label(Color color) => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
}

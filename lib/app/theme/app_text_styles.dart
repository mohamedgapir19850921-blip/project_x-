import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle headingLarge(Color color) {
    return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle headingMedium(Color color) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle title(Color color) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle body(Color color) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle label(Color color) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }
}

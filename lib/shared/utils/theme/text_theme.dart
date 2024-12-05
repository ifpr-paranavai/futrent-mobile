import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';

class CustomTextTheme {
  CustomTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: black),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: black),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: black),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: black),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: black),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: black),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: black),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: black.withOpacity(0.5)),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: black.withOpacity(0.5)),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: white),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: white),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: white),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: white),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: white),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: white),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: white),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: white.withOpacity(0.5)),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: white.withOpacity(0.5)),
  );
}

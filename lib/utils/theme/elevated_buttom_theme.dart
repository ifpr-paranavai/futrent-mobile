import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: white,
      backgroundColor: lightGreen,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide(color: white),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: TextStyle(
        fontSize: 16.0,
        color: white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: white,
      backgroundColor: lightGreen,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide(color: white),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: TextStyle(
        fontSize: 16.0,
        color: white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );
}

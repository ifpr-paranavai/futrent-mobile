import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';

class CustomChipTheme {
  CustomChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.5),
    labelStyle: TextStyle(color: black),
    selectedColor: darkGreen,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.5),
    labelStyle: TextStyle(color: white),
    selectedColor: lightGreen,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
  );
}

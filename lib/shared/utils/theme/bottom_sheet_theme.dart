import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';

class CustomBottomSheetTheme {
  CustomBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: white,
      modalBackgroundColor: white,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ));

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: black,
      modalBackgroundColor: black,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ));
}

import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/theme/appbar_theme.dart';
import 'package:futrent_mobile/shared/utils/theme/bottom_sheet_theme.dart';
import 'package:futrent_mobile/shared/utils/theme/checkbox_theme.dart';
import 'package:futrent_mobile/shared/utils/theme/chip_theme.dart';
import 'package:futrent_mobile/shared/utils/theme/elevated_buttom_theme.dart';
import 'package:futrent_mobile/shared/utils/theme/outlined_button_theme.dart';
import 'package:futrent_mobile/shared/utils/theme/text_field_theme.dart';
import 'package:futrent_mobile/shared/utils/theme/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Rubik',
      brightness: Brightness.light,
      primaryColor: lightGreen,
      scaffoldBackgroundColor: white,
      textTheme: CustomTextTheme.lightTextTheme,
      chipTheme: CustomChipTheme.lightChipTheme,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.lightCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: CustomTextFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Rubik',
      brightness: Brightness.dark,
      primaryColor: darkGreen,
      scaffoldBackgroundColor: lightBlack,
      textTheme: CustomTextTheme.darkTextTheme,
      chipTheme: CustomChipTheme.darkChipTheme,
      appBarTheme: CustomAppBarTheme.darkAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme);
}

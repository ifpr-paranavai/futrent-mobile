import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: black, size: 24),
    actionsIconTheme: IconThemeData(color: white, size: 24),
    titleTextStyle:
        TextStyle(color: white, fontSize: 18.0, fontWeight: FontWeight.w600),
  );

  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: black, size: 24),
    actionsIconTheme: IconThemeData(color: black, size: 24),
    titleTextStyle:
        TextStyle(color: black, fontSize: 18.0, fontWeight: FontWeight.w600),
  );
}

import 'package:flutter/material.dart';

class CustomShadowStyle {
  static final verticalProductsShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductsShadow = BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}

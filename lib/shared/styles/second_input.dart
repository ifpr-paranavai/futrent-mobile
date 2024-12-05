import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';

class SecondTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String labelText;
  final Color fillColor;
  final Color borderColor;
  final Color focusColor;
  final TextEditingController controller;
  final Icon? icon;

  const SecondTextField({
    super.key,
    required this.obscureText,
    required this.hintText,
    required this.labelText,
    required this.fillColor,
    required this.borderColor,
    required this.focusColor,
    required this.controller,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: icon,
        prefixIconColor: yellow,
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: yellow),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 17.0,
          color: yellow,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 10.0,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 2.5, color: borderColor),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: const BorderRadius.all(Radius.circular(40.0)),
        ),
        focusColor: focusColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String labelText;
  final Color labelTextColor;
  final Color fillColor;
  final Color borderColor;
  final Color focusColor;
  final Color hintTextColor;
  final TextEditingController controller;
  final Icon? icon;
  final Color prefixIconColor;
  final String? Function(String?)? validator;
  final IconButton? suffixIcon;

  const PrimaryTextField({
    super.key,
    required this.obscureText,
    required this.hintText,
    required this.labelText,
    required this.labelTextColor,
    required this.fillColor,
    required this.borderColor,
    required this.focusColor,
    required this.hintTextColor,
    required this.controller,
    this.icon,
    required this.prefixIconColor,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: icon,
        prefixIconColor: prefixIconColor,
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 17.0,
          color: labelTextColor,
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

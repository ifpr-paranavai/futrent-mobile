import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  backgroundColor: lightGreen,
  foregroundColor: darkGreen,
  minimumSize: const Size(327, 50),
  elevation: 0,
  padding: EdgeInsets.all(16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);

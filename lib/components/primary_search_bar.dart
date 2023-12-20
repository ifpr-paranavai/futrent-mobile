import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';

class PrimarySearchBar extends StatelessWidget {
  const PrimarySearchBar({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: showBackground ? white : Colors.transparent,
            borderRadius: BorderRadius.circular(16.0),
            border: showBorder ? Border.all(color: white) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: orange),
              const SizedBox(height: 16),
              Text(text,
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Rubik',
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}

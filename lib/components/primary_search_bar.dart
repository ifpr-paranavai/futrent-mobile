import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class PrimarySearchBar extends StatelessWidget {
  const PrimarySearchBar({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 24.0,
    ),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? darkGrey
                    : white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16.0),
            border: showBorder
                ? Border.all(color: dark ? white : darkGrey.withOpacity(0.4))
                : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: orange),
              const SizedBox(width: 8),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}

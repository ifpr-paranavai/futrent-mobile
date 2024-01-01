import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class CartCountIcon extends StatelessWidget {
  const CartCountIcon(
      {super.key,
      required this.onPressed,
      this.iconColor,
      this.counterBgColor,
      this.counterTextColor});

  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: dark ? white : lightBlack),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (dark ? white : black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2', style: TextStyle(color: dark ? black : white)),
            ),
          ),
        )
      ],
    );
  }
}

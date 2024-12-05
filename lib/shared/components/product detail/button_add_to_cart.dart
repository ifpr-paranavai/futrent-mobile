import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/product%20detail/circular_icon.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ButtonAddToCart extends StatelessWidget {
  const ButtonAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace, vertical: Sizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? darkGrey : white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Sizes.cardRadiusLg),
          topRight: Radius.circular(Sizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: lightGrey,
                width: 40,
                height: 40,
                color: white,
              ),
              const SizedBox(width: Sizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: Sizes.spaceBtwItems),
              CircularIcon(
                icon: Iconsax.add,
                backgroundColor: lightGreen,
                width: 40,
                height: 40,
                color: white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(Sizes.md),
                backgroundColor: lightGreen,
                side: BorderSide(color: lightGreen)),
            child: const Text(
              'Adicionar ao carrinho',
            ),
          )
        ],
      ),
    );
  }
}

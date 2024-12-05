import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/product%20detail/circular_icon.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: Sizes.md,
          color: white,
          backgroundColor: lightGreen,
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: Sizes.md,
          color: white,
          backgroundColor: lightGreen,
        ),
      ],
    );
  }
}

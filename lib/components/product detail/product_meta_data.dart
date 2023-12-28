import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/images/circular_image.dart';
import 'package:futrent_mobile/components/sport_title_with_verified_icon.dart';
import 'package:futrent_mobile/components/product_price_text.dart';
import 'package:futrent_mobile/components/product_title_text.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/enums/enums.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// - Price $ Sale Price
        Row(
          children: [
            /// - Sale tag

            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: orange,
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.sm, vertical: Sizes.xs),
              child: Text(
                '25%',
                style:
                    Theme.of(context).textTheme.labelLarge!.apply(color: white),
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),

            /// - Price
            Text('R\$ 100',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: Sizes.spaceBtwItems),
            const ProductPriceText(
              price: '90',
              isLarge: true,
            )
          ],
        ),

        const SizedBox(height: Sizes.spaceBtwItems / 1.5),

        /// - Title
        const ProductTitleText(title: 'FutArena Recreativa'),
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),

        /// - Stack Status
        Row(
          children: [
            const ProductTitleText(
              title: 'Status:',
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text('Disponível', style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),

        /// - Estabilishment
        Row(
          children: [
            CircularImage(
              image: 'assets/images/soccerball.png',
              width: 32,
              height: 32,
              overlayColor: dark ? white : black,
            ),
            const SportTitleWithVerifiedIcon(
              title: 'Futebol Society',
              textSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}

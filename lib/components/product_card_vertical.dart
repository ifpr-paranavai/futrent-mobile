import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/product_price_text.dart';
import 'package:futrent_mobile/components/product_title_text.dart';
import 'package:futrent_mobile/components/rounded-image.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/styles/shadow_style.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [CustomShadowStyle.verticalProductsShadow],
          borderRadius: BorderRadius.circular(16.0),
          color: dark ? Colors.grey[850] : white,
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(8),
              backgroundColor: dark ? black : white,
              child: Stack(
                children: [
                  RoundedImage(
                    imageUrl: 'assets/images/estabelecimentos/campo1.jpeg',
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 3,
                    child: RoundedContainer(
                      radius: 8,
                      backgroundColor: orange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: 'Show de Bola',
                    smallSize: false,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Futebol Society',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Icon(Iconsax.verify5, color: orange, size: 12),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ProductPriceText(
                        price: '90,00',
                        isLarge: false,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: black,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(16))),
                        child: SizedBox(
                          width: 32 * 1.2,
                          height: 32 * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: white)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

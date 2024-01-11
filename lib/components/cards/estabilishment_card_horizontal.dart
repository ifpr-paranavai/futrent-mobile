import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/images/rounded_image.dart';
import 'package:futrent_mobile/components/product%20detail/product_price.dart';
import 'package:futrent_mobile/components/product%20detail/product_title_text.dart';
import 'package:futrent_mobile/components/icons/sport_title_with_verified_icon.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: dark ? darkGrey : lightGrey,
      ),
      child: Row(
        children: [
          /// -- IMAGE
          RoundedContainer(
            backgroundColor: dark ? darkGrey : lightGrey,
            height: 120,
            padding: const EdgeInsets.all(Sizes.sm),
            child: Stack(
              children: [
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundedImage(
                    imageUrl: 'assets/images/ALAMBRADO.jpg',
                    applyImageRadius: true,
                  ),
                ),

                /// -- TAG DE VENDA
                Positioned(
                  top: 6,
                  child: RoundedContainer(
                    radius: Sizes.sm,
                    backgroundColor: orange,
                    padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.sm, vertical: Sizes.xs),
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

          /// -- DETAILS
          Padding(
            padding: const EdgeInsets.only(top: Sizes.sm, left: Sizes.sm),
            child: SizedBox(
              width: 164,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(title: 'FutArena', smallSize: true),
                        SizedBox(height: Sizes.spaceBtwItems / 2),
                        SportTitleWithVerifiedIcon(title: 'Futebol Society'),
                      ],
                    ),
                  ),

                  const Spacer(),

                  /// -- Price
                  SizedBox(
                    width: 165,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ProductPriceText(price: '90,00'),

                        /// -- Add  to cart
                        Container(
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(Sizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      Sizes.productImageRadius))),
                          child: SizedBox(
                            width: Sizes.iconLg * 1.2,
                            height: Sizes.iconLg * 1.2,
                            child:
                                Center(child: Icon(Iconsax.add, color: white)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

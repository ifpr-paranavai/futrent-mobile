import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/sport_title_with_verified_icon.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/product_price_text.dart';
import 'package:futrent_mobile/components/product_title_text.dart';
import 'package:futrent_mobile/components/images/rounded-image.dart';
import 'package:futrent_mobile/pages/product%20details/product_details_page.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/styles/shadow_style.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailPage()),
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
                  const RoundedImage(
                    imageUrl: 'assets/images/estabelecimentos/ALAMBRADO.jpg',
                    applyImageRadius: true,
                  ),

                  /// -- TAG DE VENDA
                  Positioned(
                    top: 3,
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

            const SizedBox(height: Sizes.spaceBtwItems / 2),

            /// -- DETALHES
            const Padding(
              padding: EdgeInsets.only(left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Show de Bola',
                    smallSize: true,
                  ),
                  SizedBox(height: Sizes.spaceBtwItems / 2),
                  SportTitleWithVerifiedIcon(
                    title: 'Futebol Society',
                  ),
                ],
              ),
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ProductPriceText(
                    price: '90,00',
                    isLarge: false,
                  ),
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/icons/sport_title_with_verified_icon.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/common/product_price_text.dart';
import 'package:futrent_mobile/components/common/product_title_text.dart';
import 'package:futrent_mobile/components/images/rounded_image.dart';
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
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          color: dark ? darkLightGreen : white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                const RoundedImage(
                  imageUrl: 'assets/images/ALAMBRADO.jpg',
                  applyImageRadius: true,
                ),

                /// -- TAG DE VENDA
                Positioned(
                  top: 6,
                  child: RoundedContainer(
                    radius: Sizes.sm,
                    backgroundColor: babyBlue,
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.sm, vertical: Sizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: white),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: Sizes.spaceBtwItems / 2),

            /// -- DETALHES
            const Padding(
              padding: EdgeInsets.only(
                right: Sizes.xl,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'FutArena Recreativa',
                    smallSize: true,
                    maxLines: 1,
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
                  padding: EdgeInsets.only(left: Sizes.sm),
                  child: ProductPriceText(price: '90,00'),
                ),

                /// -- ADD TO CART BUTTON
                Container(
                  decoration: BoxDecoration(color: dark ? lightBlack : lightGreen, borderRadius: const BorderRadius.only(topLeft: Radius.circular(Sizes.cardRadiusMd), bottomRight: Radius.circular(Sizes.productImageRadius))),
                  child: SizedBox(
                    width: Sizes.iconLg * 1.2,
                    height: Sizes.iconLg * 1.2,
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

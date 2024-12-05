import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/common/section_heading.dart';
import 'package:futrent_mobile/shared/components/product%20detail/button_add_to_cart.dart';
import 'package:futrent_mobile/shared/components/product%20detail/product_image_slider.dart';
import 'package:futrent_mobile/shared/components/product%20detail/product_meta_data.dart';
import 'package:futrent_mobile/shared/components/product%20detail/rating_and_share.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';
import 'package:futrent_mobile/shared/utils/texts.dart';
import 'package:futrent_mobile/shared/view/product%20reviews/product_reviews.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const ButtonAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- PRODUCT IMAGE SLIDER
            ProductImageSlider(dark: dark),

            /// -- PRODUCT NAME
            Padding(
              padding: const EdgeInsets.only(
                  right: Sizes.defaultSpace,
                  left: Sizes.defaultSpace,
                  bottom: Sizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share
                  const RatingAndShare(),

                  /// - Price, Description Stack & Brand
                  const ProductMetaData(),

                  /// - Attributes
                  /// - Checkout Button
                  const SizedBox(height: Sizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Alugar'))),

                  const SizedBox(height: Sizes.spaceBtwSections),

                  /// - Description
                  const SectionHeading(
                      title: 'Descrição', showActionButton: false),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  const ReadMoreText(
                    Texts.descriptionEstabilishment,
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' mais',
                    trimExpandedText: ' menos',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                        title: 'Comentários(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                        onPressed: () =>
                            Get.to(() => const ProductReviewPage()),
                      ),
                    ],
                  ),
                  const SizedBox(height: Sizes.spaceBtwItems),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

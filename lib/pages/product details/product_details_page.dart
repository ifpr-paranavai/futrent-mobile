import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/product%20detail/product_image_slider.dart';
import 'package:futrent_mobile/components/product%20detail/product_meta_data.dart';
import 'package:futrent_mobile/components/product%20detail/rating_and_share.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- PRODUCT IMAGE SLIDER
            ProductImageSlider(dark: dark),

            /// -- PRODUCT NAME
            const Padding(
              padding: EdgeInsets.only(
                  right: Sizes.defaultSpace,
                  left: Sizes.defaultSpace,
                  bottom: Sizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share
                  RatingAndShare(),

                  /// - Price, Description Stack & Brand
                  ProductMetaData()

                  /// - Attributes
                  /// - Checkout Button
                  /// - Description
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/curved_edges_widget.dart';
import 'package:futrent_mobile/components/images/rounded-image.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? darkGrey : white,
        child: Stack(
          children: [
            /// -- MAIN LARGE IMAGE
            const Image(
                image:
                    AssetImage('assets/images/estabelecimentos/ALAMBRADO.jpg')),

            Positioned(
              right: 0,
              bottom: 30,
              left: Sizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: Sizes.spaceBtwItems),
                  itemBuilder: (_, index) => RoundedImage(
                      width: 80,
                      backgroundColor: dark ? black : white,
                      border: Border.all(color: orange),
                      padding: const EdgeInsets.all(Sizes.sm),
                      imageUrl: 'assets/images/estabelecimentos/ALAMBRADO.jpg'),
                ),
              ),
            ),

            const AppBarPrimary(
              showBackArrow: true,
            )
          ],
        ),
      ),
    );
  }
}

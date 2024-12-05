import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/all%20sports/sport_card.dart';
import 'package:futrent_mobile/shared/components/containers/rounded_container.dart';
import 'package:futrent_mobile/shared/components/images/rounded_image.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';

class SportsShowCase extends StatelessWidget {
  const SportsShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: darkGrey,
      padding: const EdgeInsets.all(Sizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Column(
        children: [
          const SportCard(showBorder: false),
          const SizedBox(height: Sizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => sportTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget sportTopProductImageWidget(String image, context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(Sizes.md),
        margin: const EdgeInsets.only(right: Sizes.sm),
        backgroundColor: DeviceUtility.isDarkMode(context) ? lightBlack : white,
        child: RoundedImage(
          imageUrl: image,
          applyImageRadius: true,
        ),
      ),
    );
  }
}

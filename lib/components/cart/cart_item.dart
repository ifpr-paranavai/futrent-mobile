import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/images/rounded_image.dart';
import 'package:futrent_mobile/components/common/sport_title_text.dart';
import 'package:futrent_mobile/components/icons/sport_title_with_verified_icon.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/enums/enums.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// -- IMAGE
        RoundedImage(
          imageUrl: 'assets/images/estabelecimentos/ALAMBRADO.jpg',
          width: 60,
          heigth: 60,
          padding: const EdgeInsets.all(Sizes.sm),
          backgroundColor: DeviceUtility.isDarkMode(context) ? black : white,
        ),
        const SizedBox(width: Sizes.spaceBtwItems),

        /// -- Title, Price and Estabilishment
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SportTitleWithVerifiedIcon(title: 'Futebol Society'),
              const EstabilishmentTitleText(
                title: 'FutArena',
                maxLines: 1,
                brandTextSize: TextSizes.large,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Unidade de medida: ',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    TextSpan(
                      text: 'Horas',
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

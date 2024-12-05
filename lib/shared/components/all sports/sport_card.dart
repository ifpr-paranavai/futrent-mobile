import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/containers/rounded_container.dart';
import 'package:futrent_mobile/shared/components/icons/sport_title_with_verified_icon.dart';
import 'package:futrent_mobile/shared/components/images/circular_image.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';
import 'package:futrent_mobile/shared/utils/enums/enums.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';

class SportCard extends StatelessWidget {
  const SportCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(Sizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- ICON
            Flexible(
                child: CircularImage(
              isNetworkImage: false,
              image: 'assets/images/soccerball.png',
              backgroundColor: Colors.transparent,
              overlayColor: dark ? white : black,
            )),
            const SizedBox(width: Sizes.spaceBtwItems / 2),

            /// -- TEXTS
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SportTitleWithVerifiedIcon(
                    title: 'Futebol Society', textSizes: TextSizes.large),
                Text('25 Locais',
                    style: Theme.of(context).textTheme.labelMedium)
              ],
            ))
          ],
        ),
      ),
    );
  }
}

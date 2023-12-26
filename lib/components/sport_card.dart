import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/brand_title_with_verified_icon.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/images/circular_image.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/enums/enums.dart';

class SportCard extends StatelessWidget {
  const SportCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(8),
        showBorder: showBorder,
        borderColor: DeviceUtility.isDarkMode(context) ? white : black,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                isNetworkImage: false,
                image: 'assets/images/soccerball.png',
                backgroundColor: Colors.transparent,
                overlayColor: dark ? white : black,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon(
                      title: 'teste', textSizes: TextSizes.large),
                  Text('256 locaisasdas',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

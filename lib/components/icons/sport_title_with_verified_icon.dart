import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/common/sport_title_text.dart';
import 'package:futrent_mobile/utils/enums/enums.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SportTitleWithVerifiedIcon extends StatelessWidget {
  const SportTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.textColor,
    this.iconColor = const Color.fromRGBO(213, 107, 29, 1),
    this.textSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final Color? textColor, iconColor;
  final TextSizes textSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: EstabilishmentTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: textSizes,
          ),
        ),
        const SizedBox(width: Sizes.xs),
        const Icon(Iconsax.verify5, color: Colors.blue, size: Sizes.iconXs),
      ],
    );
  }
}

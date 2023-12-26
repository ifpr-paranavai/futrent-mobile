import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/brand_title_text.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/enums/enums.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
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
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: textSizes,
          ),
        ),
        const SizedBox(width: 4),
        Icon(Iconsax.verify5, color: Colors.blue, size: 12),
      ],
    );
  }
}

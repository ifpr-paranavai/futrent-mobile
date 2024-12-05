import 'package:flutter/material.dart';
import 'package:futrent_mobile/utils/enums/enums.dart';

class EstablishmentTitleText extends StatelessWidget {
  const EstablishmentTitleText(
      {super.key,
      this.color,
      required this.title,
      required this.maxLines,
      this.textAlign,
      required this.nameTextSize});

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes nameTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: nameTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : nameTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : nameTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}

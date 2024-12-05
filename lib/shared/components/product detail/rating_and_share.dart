import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.star, color: babyBlue, size: 24),
            const SizedBox(width: Sizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: ' (199)'),
                ],
              ),
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: Sizes.iconMd,
            )),
      ],
    );
  }
}

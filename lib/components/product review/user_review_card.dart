import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/components/product%20review/custom_rating_bar_indicator.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:futrent_mobile/utils/texts.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/romario.jpg')),
                const SizedBox(width: Sizes.spaceBtwItems),
                Text('Romário', style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems),

        /// -- review
        Row(
          children: [
            const CustomRatingBarIndicator(rating: 4),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems),
        ReadMoreText(
          Texts.commentRomario,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Ver menos',
          trimCollapsedText: 'Ver mais',
          moreStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: lightGreen),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: lightGreen,
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwItems),

        /// -- Company Review
        RoundedContainer(
          backgroundColor: dark ? lightGrey : lightGrey,
          child: Padding(
            padding: const EdgeInsets.all(Sizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('FutArena Recreativa',
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text('02 Nov, 2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: Sizes.spaceBtwItems),
                ReadMoreText(
                  Texts.answerRomario,
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Ver menos',
                  trimCollapsedText: 'Ver mais',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: lightGreen),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: lightGreen,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwSections),
      ],
    );
  }
}

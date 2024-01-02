import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/components/product%20review/custom_rating_bar_indicator.dart';
import 'package:futrent_mobile/components/product%20review/overall_product_rating.dart';
import 'package:futrent_mobile/components/product%20review/user_review_card.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class ProductReviewPage extends StatelessWidget {
  const ProductReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- appbar
      appBar: const AppBarPrimary(
        title: Text('Avaliações do Local'),
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Avaliações e reviews são verificadas e de pessoas que utilizam o mesmo dispositivo que você.'),
              const SizedBox(height: Sizes.spaceBtwItems),

              /// -- overall product ratings
              const OverallProductRating(),
              const CustomRatingBarIndicator(rating: 5),
              Text('12,611', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// -- reviews
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

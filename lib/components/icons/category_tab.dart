import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/grid/grid_layout.dart';
import 'package:futrent_mobile/components/cards/estabilishment_card_vertical.dart';
import 'package:futrent_mobile/components/common/section_heading.dart';
import 'package:futrent_mobile/components/common/sports_show_case.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              const SportsShowCase(
                images: [
                  'assets/images/estabelecimentos/lala.jpg',
                  'assets/images/estabelecimentos/lala.jpg',
                  'assets/images/estabelecimentos/lala.jpg',
                ],
              ),
              const SportsShowCase(
                images: [
                  'assets/images/estabelecimentos/lala.jpg',
                  'assets/images/estabelecimentos/lala.jpg',
                  'assets/images/estabelecimentos/lala.jpg',
                ],
              ),
              SectionHeading(
                title: 'Você pode gostar',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical()),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              )
            ],
          ),
        ),
      ],
    );
  }
}

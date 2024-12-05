import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/cards/estabilishment_card_vertical.dart';
import 'package:futrent_mobile/shared/components/common/section_heading.dart';
import 'package:futrent_mobile/shared/components/containers/primary_app_bar_container.dart';
import 'package:futrent_mobile/shared/components/containers/primary_header_container.dart';
import 'package:futrent_mobile/shared/components/grid/grid_layout.dart';
import 'package:futrent_mobile/shared/components/icons/home_categories.dart';
import 'package:futrent_mobile/shared/components/search%20bar/primary_search_bar.dart';
import 'package:futrent_mobile/shared/components/slider/promo_slider.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';
import 'package:futrent_mobile/shared/view/all%20estabilishments/all_estabilishments.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  const AppBarPrimaryContainer(),
                  const SizedBox(height: 32),
                  const PrimarySearchBar(
                    text: 'Pesquisar Estabelecimentos',
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      children: [
                        SectionHeading(
                            title: 'Categorias Populares',
                            textColor: white,
                            showActionButton: false,
                            onPressed: () {}),
                        const SizedBox(height: 32),
                        const HomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections)
                ],
              ),
            ),

            //BODY
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      'assets/images/banners/exemplo1.png',
                      'assets/images/banners/exemplo2.png',
                      'assets/images/banners/exemplo3.png'
                    ],
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),

                  /// HEADING
                  SectionHeading(
                      title: 'Estabelecimentos',
                      showActionButton: true,
                      onPressed: () =>
                          Get.to(() => const AllEstabilishmentsPage())),
                  const SizedBox(height: Sizes.spaceBtwItems),

                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

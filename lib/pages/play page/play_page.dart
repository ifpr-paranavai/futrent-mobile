import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/grid_layout.dart';
import 'package:futrent_mobile/components/home-categories.dart';
import 'package:futrent_mobile/components/containers/primary_app_bar_container.dart';
import 'package:futrent_mobile/components/containers/primary_header_container.dart';
import 'package:futrent_mobile/components/primary_search_bar.dart';
import 'package:futrent_mobile/components/product_card_vertical.dart';
import 'package:futrent_mobile/components/promo_slider.dart';
import 'package:futrent_mobile/components/section_heading.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:iconsax/iconsax.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
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
                            showActionButton: false),
                        const SizedBox(height: 32),
                        const HomeCategories()
                      ],
                    ),
                  )
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
                  const SizedBox(height: 24),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => ProductCardVertical(),
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

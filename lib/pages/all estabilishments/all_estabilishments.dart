import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/grid_layout.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';
import 'package:futrent_mobile/components/product_card_vertical.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AllEstabilishmentsPage extends StatelessWidget {
  const AllEstabilishmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPrimary(
          title: Text('Produtos Populares'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              DropdownButtonFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.sort),
                  ),
                  onChanged: (value) {},
                  items: [
                    'Nome',
                    'Maior Preço',
                    'Menor Preço',
                    'Mais Novos',
                    'Popularidade'
                  ]
                      .map((option) =>
                          DropdownMenuItem(value: option, child: Text(option)))
                      .toList()),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// -- estabilishments
              GridLayout(
                  itemCount: 8,
                  itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}

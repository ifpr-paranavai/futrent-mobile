import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/grid_layout.dart';
import 'package:futrent_mobile/components/product_card_vertical.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SortableEstabilishment extends StatelessWidget {
  const SortableEstabilishment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

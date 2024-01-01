import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/cart/add_remove_button.dart';
import 'package:futrent_mobile/components/cart/cart_item.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';
import 'package:futrent_mobile/components/product%20detail/circular_icon.dart';
import 'package:futrent_mobile/components/product_price_text.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
          title: Text('Carrinho',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (_, index) => const Column(
                  children: [
                    CartItem(),
                    SizedBox(height: Sizes.spaceBtwItems),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ProductQuantityWithAddRemove(),
                          ],
                        ),
                        ProductPriceText(price: '100,00')
                      ],
                    ),
                  ],
                ),
            separatorBuilder: (_, __) =>
                const SizedBox(height: Sizes.spaceBtwSections)),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Comprar R\$ 100,00'),
        ),
      ),
    );
  }
}

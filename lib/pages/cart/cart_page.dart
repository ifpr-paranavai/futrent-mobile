import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/cart/cart_item.dart';
import 'package:futrent_mobile/components/cart/product_quantity_with_add_remove.dart';
import 'package:futrent_mobile/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/components/common/product_price_text.dart';
import 'package:futrent_mobile/utils/sizes.dart';

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

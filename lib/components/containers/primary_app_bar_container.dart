import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/cart/cart_count_icon.dart';
import 'package:futrent_mobile/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/view/cart/cart_page.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:get/get.dart';

class AppBarPrimaryContainer extends StatelessWidget {
  const AppBarPrimaryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarPrimary(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ótimo dia para jogar!',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: lightGrey)),
          Text(
            'Felipe da Hora',
            style:
                Theme.of(context).textTheme.headlineSmall!.apply(color: white),
          ),
        ],
      ),
      actions: [
        CartCountIcon(
          iconColor: white,
          onPressed: () => Get.to(() => const CartPage()),
        )
      ],
    );
  }
}

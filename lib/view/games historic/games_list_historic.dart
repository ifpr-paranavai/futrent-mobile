import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/rounded_container.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class GamesListHistoric extends StatelessWidget {
  const GamesListHistoric({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return ListView.separated(
      itemCount: 15,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: Sizes.spaceBtwItems),
      itemBuilder: (_, index) => RoundedContainer(
        showBorder: true,
        backgroundColor: dark ? lightBlack : lightGrey,
        padding: const EdgeInsets.all(Sizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// -- Row 1
            Row(
              children: [
                /// -- Icon
                const Icon(Iconsax.tag),
                const SizedBox(width: Sizes.spaceBtwItems / 2),

                /// -- Status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: lightGreen, fontWeightDelta: 1),
                      ),
                      Text('07 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                /// -- Icon
                IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Iconsax.arrow_right_34, size: Sizes.iconSm)),
              ],
            ),

            /// -- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// -- Icon
                      const Icon(Iconsax.play),
                      const SizedBox(width: Sizes.spaceBtwItems / 2),

                      /// -- Status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jogo: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .apply(color: lightGreen, fontWeightDelta: 1),
                            ),
                            Text('[#256f2]',
                                style:
                                    Theme.of(context).textTheme.headlineSmall)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// -- Icon
                      const Icon(Iconsax.calendar_circle),
                      const SizedBox(width: Sizes.spaceBtwItems / 2),

                      /// -- Status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Data: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .apply(color: lightGreen, fontWeightDelta: 1),
                            ),
                            Text('03 Fev 2024',
                                style:
                                    Theme.of(context).textTheme.headlineSmall)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

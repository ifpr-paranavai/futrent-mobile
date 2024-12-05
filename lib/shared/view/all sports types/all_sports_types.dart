import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/all%20sports/sport_card.dart';
import 'package:futrent_mobile/shared/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/shared/components/common/section_heading.dart';
import 'package:futrent_mobile/shared/components/grid/grid_layout.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';
import 'package:futrent_mobile/shared/view/all%20sports%20types/sport_type.dart';
import 'package:get/get.dart';

class AllSportsTypesPages extends StatelessWidget {
  const AllSportsTypesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPrimary(title: Text('Esportes'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              ///- HEADING
              const SectionHeading(title: 'Esportes'),
              const SizedBox(height: Sizes.spaceBtwItems),

              /// - SPORTS
              GridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (_, index) => SportCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const SportType()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

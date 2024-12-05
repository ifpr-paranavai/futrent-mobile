import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/all%20estabilishments/sortable_estabilishments.dart';
import 'package:futrent_mobile/shared/components/all%20sports/sport_card.dart';
import 'package:futrent_mobile/shared/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';

class SportType extends StatelessWidget {
  const SportType({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarPrimary(
        title: Text('Fut 7'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SportCard(showBorder: true),
              SizedBox(height: Sizes.spaceBtwSections),
              SortableEstabilishment()
            ],
          ),
        ),
      ),
    );
  }
}

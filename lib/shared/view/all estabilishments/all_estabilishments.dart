import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/all%20estabilishments/sortable_estabilishments.dart';
import 'package:futrent_mobile/shared/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';

class AllEstabilishmentsPage extends StatelessWidget {
  const AllEstabilishmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          AppBarPrimary(title: Text('Produtos Populares'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: SortableEstabilishment(),
        ),
      ),
    );
  }
}

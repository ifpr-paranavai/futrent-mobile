import 'package:flutter/material.dart';
import 'package:futrent_mobile/view/games%20historic/games_list_historic.dart';
import 'package:futrent_mobile/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/utils/sizes.dart';

class GamesHistoric extends StatelessWidget {
  const GamesHistoric({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarPrimary(
            showBackArrow: true,
            title: Text('Minhas Partidas',
                style: Theme.of(context).textTheme.headlineSmall)),
        body: const Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: GamesListHistoric()));
  }
}

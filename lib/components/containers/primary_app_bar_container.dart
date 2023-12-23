import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';

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
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w300)),
          Text(
            'Felipe da Hora',
            style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/circular_container.dart';
import 'package:futrent_mobile/components/curved_edges_widget.dart';
import 'package:futrent_mobile/components/primary_app_bar.dart';
import 'package:futrent_mobile/components/primary_header_container.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/styles/curved_edges.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  AppBarPrimary(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

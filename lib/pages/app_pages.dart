import 'package:flutter/material.dart';
import 'package:futrent_mobile/modules/login/login_page.dart';

class AppPages extends StatelessWidget {
  const AppPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPage(),
    );
  }
}

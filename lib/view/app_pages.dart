import 'package:flutter/material.dart';
import 'package:futrent_mobile/modules/login/login_view.dart';

class AppPages extends StatelessWidget {
  const AppPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginView(),
    );
  }
}

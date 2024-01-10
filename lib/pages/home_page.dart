import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/common/bottom-bar-menu.dart';
import 'package:get/get.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigationMenu(),
      body: Obx(() => navigationController
          .screens[navigationController.selectedIndex.value]),
    );
  }
}

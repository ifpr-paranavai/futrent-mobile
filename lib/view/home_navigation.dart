import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/common/navigation_menu.dart';
import 'package:get/get.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
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

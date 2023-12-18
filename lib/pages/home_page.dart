import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/bottom-bar-menu.dart';
import 'package:futrent_mobile/styles/button.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/styles/primary_input.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        title: const Text('Futrent', style: TextStyle(fontFamily: 'Rubik')),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.notifications)],
      ),
      bottomNavigationBar: BottomPrimaryBar(),
      body: Obx(() => navigationController
          .screens[navigationController.selectedIndex.value]),
    );
  }
}

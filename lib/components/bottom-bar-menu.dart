import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:iconsax/iconsax.dart';

class BottomPrimaryBar extends StatelessWidget {
  const BottomPrimaryBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Obx(
      () => BottomNavigationBar(
        backgroundColor: orange,
        currentIndex: controller.selectedIndex.value,
        onTap: (index) => controller.selectedIndex.value = index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar),
            label: 'Agenda',
            backgroundColor: orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.play_circle),
            label: 'Jogar',
            backgroundColor: orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Menu',
            backgroundColor: orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            label: 'Conversas',
            backgroundColor: orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'Perfil',
            backgroundColor: orange,
          ),
        ],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.red),
    Container(color: Colors.purple)
  ];
}

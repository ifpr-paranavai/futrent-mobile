import 'package:flutter/material.dart';
import 'package:futrent_mobile/pages/home/home_page.dart';
import 'package:futrent_mobile/pages/play/play_page.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
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
    final dark = DeviceUtility.isDarkMode(context);

    return Obx(
      () => NavigationBar(
        height: 80,
        elevation: 0,
        backgroundColor: dark ? lightBlack : white,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) =>
            controller.selectedIndex.value = index,
        destinations: [
          NavigationDestination(
              icon: Icon(
                Iconsax.calendar,
                color: dark ? white : lightBlack,
              ),
              label: 'Agenda'),
          NavigationDestination(
            icon: Icon(
              Iconsax.play_circle,
              color: dark ? white : lightBlack,
            ),
            label: 'Jogar',
          ),
          NavigationDestination(
            icon: Icon(
              Iconsax.home,
              color: dark ? white : lightBlack,
            ),
            label: 'Menu',
          ),
          NavigationDestination(
            icon: Icon(
              Iconsax.message,
              color: dark ? white : lightBlack,
            ),
            label: 'Conversas',
          ),
          NavigationDestination(
            icon: Icon(
              Iconsax.user,
              color: dark ? white : lightBlack,
            ),
            label: 'Perfil',
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
    PlayPage(),
    HomePage(),
    Container(color: Colors.red),
    Container(color: Colors.purple)
  ];
}

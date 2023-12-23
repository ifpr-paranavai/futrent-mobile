import 'package:flutter/material.dart';
import 'package:futrent_mobile/pages/onboarding/onboarding_controller.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 24,
        bottom: DeviceUtility.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: white),
          child: const Icon(
            Iconsax.arrow_right_3,
            color: Color.fromRGBO(0, 115, 206, 1),
          ),
        ));
  }
}

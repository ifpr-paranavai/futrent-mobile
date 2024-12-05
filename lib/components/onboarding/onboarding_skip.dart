import 'package:flutter/material.dart';
import 'package:futrent_mobile/view/onboarding/onboarding_controller.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtility.getAppBarHeight(),
      right: 24.0,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text(
          'Pular',
          style: TextStyle(
              color: white, fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

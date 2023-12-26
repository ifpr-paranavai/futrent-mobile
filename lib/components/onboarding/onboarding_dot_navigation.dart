import 'package:flutter/material.dart';
import 'package:futrent_mobile/pages/onboarding/onboarding_controller.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: DeviceUtility.getBottomNavigationBarHeight() + 25,
      left: 24,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: orange, dotHeight: 6, dotWidth: 10),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';

class OnBoardingPageItem extends StatelessWidget {
  const OnBoardingPageItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 200),
          Image(
            width: 900,
            height: DeviceUtility.getScreenWidth() * 0.6,
            image: AssetImage(image),
          ),
          const SizedBox(height: 86.0),
          Text(
            title,
            style: TextStyle(
                fontSize: 24.0, fontWeight: FontWeight.w600, color: white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          Text(description,
              style: TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.normal, color: white),
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}

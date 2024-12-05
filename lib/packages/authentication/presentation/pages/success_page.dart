import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/styles/spacing_style.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      this.onPressed});

  final String image, title, subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: DeviceUtility.getScreenWidth() * 0.6,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),

              ///title and subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: Sizes.spaceBtwItems),

              Text(subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),

              const SizedBox(height: Sizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

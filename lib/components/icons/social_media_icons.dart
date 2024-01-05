import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/colors.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,
    required this.valuePadding,
    required this.circleBorderColor,
  });

  final double valuePadding;
  final Color circleBorderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(valuePadding),
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: circleBorderColor),
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                    image: AssetImage('assets/images/google.png'),
                    width: 24,
                    height: 24),
                color: white,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: circleBorderColor),
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                    image: AssetImage('assets/images/facebook.png'),
                    width: 24,
                    height: 24),
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

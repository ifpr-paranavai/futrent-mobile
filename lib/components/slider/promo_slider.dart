import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/circular_container.dart';
import 'package:futrent_mobile/components/images/rounded_image.dart';
import 'package:futrent_mobile/view/home/home_controller.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banners.map((url) => RoundedImage(imageUrl: url)).toList()),
        const SizedBox(height: 16),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselController.value == i
                        ? babyBlue
                        : Colors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

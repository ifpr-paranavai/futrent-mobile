import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/icons_horizontal.dart';
import 'package:futrent_mobile/pages/sub%20category/subcategory_page.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return IconesDestaquesHorizontais(
            image: 'assets/images/fut7.png',
            title: 'Futebol',
            onTap: () => Get.to(() => const SubCategoriesPage()),
            textColor: white,
            backgroundColor: white,
          );
        },
      ),
    );
  }
}

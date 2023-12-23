import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselController = 0.obs;

  void updatePageIndicator(index) {
    carouselController.value = index;
  }
}

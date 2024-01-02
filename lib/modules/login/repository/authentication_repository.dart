import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:futrent_mobile/modules/login/login_page.dart';
import 'package:futrent_mobile/pages/onboarding/onboarding_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    // LOCAL STORAGE
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.off(const LoginPage())
        : Get.off(const OnBoardingScreen());
  }
}

import 'package:futrent_mobile/modules/login/service/authentication_service.dart';
import 'package:get/get.dart';

class SettingUserController extends GetxController {
  Future<void> signout() async {
    AuthenticationService.instance.logout();
  }
}

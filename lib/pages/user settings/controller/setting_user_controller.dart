import 'package:futrent_mobile/modules/login/repository/authentication_repository.dart';
import 'package:get/get.dart';

class SettingUserController extends GetxController {
  Future<void> signout() async {
    AuthenticationRepository.instance.logout();
  }
}

import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';
import 'package:get/get.dart';

class SettingUserController extends GetxController {
  Future<void> signout() async {
    AuthenticationRemoteDataSource.instance.logout();
  }
}

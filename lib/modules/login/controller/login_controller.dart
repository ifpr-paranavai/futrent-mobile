import 'package:flutter/material.dart';
import 'package:futrent_mobile/modules/login/controller/user_controller.dart';
import 'package:futrent_mobile/modules/login/service/authentication_service.dart';
import 'package:futrent_mobile/utils/full_screen_loader.dart';
import 'package:futrent_mobile/utils/helpers/network_manager.dart';
import 'package:futrent_mobile/utils/image_strings.dart';
import 'package:futrent_mobile/utils/loaders.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    super.onInit();
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
  }

  /// -- Email and Password SignIn --
  Future<void> emailAndPasswordSignIn() async {
    try {
      //Start Loading
      FullScreenLoader.openLoadingDialog('Entrando...', TImages.docerAnimation);

      //Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!loginFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Remember me
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //Login
      final userCredentials = await AuthenticationService.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      FullScreenLoader.stopLoading();

      //Redirect
      AuthenticationService.instance.screenRedirect();
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(
          title: 'Opa, algo deu errado', message: e.toString());
    }
  }

  /// -- Google SignIn Authentication --
  Future<void> googleSignIn() async {
    try {
      //Start Loading
      FullScreenLoader.openLoadingDialog('Entrando...', TImages.docerAnimation);

      //Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Google Authentication
      final userCredentials =
          await AuthenticationService.instance.signInWithGoogle();

      //save user recort
      await userController.saveUserRecord(userCredentials);

      FullScreenLoader.stopLoading();

      //Redirect
      AuthenticationService.instance.screenRedirect();
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(
          title: 'Opa, algo deu errado', message: e.toString());
    }
  }
}

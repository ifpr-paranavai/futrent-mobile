import 'package:flutter/material.dart';
import 'package:futrent_mobile/modules/login/service/authentication_service.dart';
import 'package:futrent_mobile/view/forget%20password/reset_password_screen.dart';
import 'package:futrent_mobile/utils/full_screen_loader.dart';
import 'package:futrent_mobile/utils/helpers/network_manager.dart';
import 'package:futrent_mobile/utils/image_strings.dart';
import 'package:futrent_mobile/utils/loaders.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      //Start Loading
      FullScreenLoader.openLoadingDialog(
          'Processando sua solicitação', TImages.docerAnimation);

      //Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Send Email to reset password
      await AuthenticationService.instance
          .sendPasswordResetEmail(email.text.trim());

      //Remove Loader
      FullScreenLoader.stopLoading();

      //Show Success Screen
      Loaders.successSnackBar(
          title: 'Email Enviado',
          message: 'Um email foi enviado para recuperação da sua conta');

      // Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(
          title: 'Ops! Algo deu errado', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      //Start Loading
      FullScreenLoader.openLoadingDialog(
          'Processando sua solicitação', TImages.docerAnimation);

      //Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Send Email to reset password
      await AuthenticationService.instance.sendPasswordResetEmail(email);

      //Remove Loader
      FullScreenLoader.stopLoading();

      //Show Success Screen
      Loaders.successSnackBar(
          title: 'Email Enviado', message: 'Um email foi enviado para $email');
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(
          title: 'Ops! Algo deu errado', message: e.toString());
    }
  }
}

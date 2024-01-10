import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:futrent_mobile/modules/login/repository/authentication_repository.dart';
import 'package:futrent_mobile/pages/signup/success_page.dart';
import 'package:futrent_mobile/utils/image_strings.dart';
import 'package:futrent_mobile/utils/loaders.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  /// Send email whenever verify email appeers & set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimeForAutoRedirect();
    super.onInit();
  }

  /// Send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      Loaders.successSnackBar(
          title: 'Email enviado',
          message: 'Verifique sua caixa de entrada e verifique seu email');
    } catch (e) {
      Loaders.errorSnackBar(
          title: 'Opa, algo deu errado', message: e.toString());
    }
  }

  /// timer automatically redirect on email verification
  setTimeForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessPage(
            image: TImages.successfullyRegisterAnimation,
            title: 'Sua conta foi criada com sucesso',
            subtitle: 'teste',
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

  /// manually check if email is verified
  checkEmailVerificationStatus() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && user.emailVerified) {
      Get.off(SuccessPage(
        image: TImages.successfullyRegisterAnimation,
        title: 'Sua conta foi criada com sucesso',
        subtitle: 'asdasd',
        onPressed: () => AuthenticationRepository.instance.screenRedirect(),
      ));
    }
  }
}

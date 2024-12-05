import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';
import 'package:futrent_mobile/packages/authentication/presentation/pages/success_page.dart';
import 'package:futrent_mobile/shared/utils/image_strings.dart';
import 'package:futrent_mobile/shared/utils/loaders.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  /// Send email whenever verify email appeers & set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    //setTimeForAutoRedirect();
    super.onInit();
  }

  /// Send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRemoteDataSource.instance.sendEmailVerification();
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
                AuthenticationRemoteDataSource.instance.screenRedirect()));
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
        onPressed: () =>
            AuthenticationRemoteDataSource.instance.screenRedirect(),
      ));
    }
  }
}

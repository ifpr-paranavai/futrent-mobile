import 'package:flutter/material.dart';
import 'package:futrent_mobile/modules/login/controller/verify_email_controller.dart';
import 'package:futrent_mobile/modules/login/model/user_model.dart';
import 'package:futrent_mobile/modules/login/service/authentication_service.dart';
import 'package:futrent_mobile/view/signup/verify_email.dart';
import 'package:futrent_mobile/utils/full_screen_loader.dart';
import 'package:futrent_mobile/utils/image_strings.dart';
import 'package:futrent_mobile/utils/loaders.dart';
import 'package:futrent_mobile/utils/helpers/network_manager.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  static VerifyEmailController get instanceEmail => Get.find();

  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;
  final acceptTerms = false.obs;
  final name = TextEditingController();
  final lastName = TextEditingController();
  final phone = TextEditingController();
  final city = TextEditingController();
  final address = TextEditingController();
  final numberAddress = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signUp() async {
    try {
      //Start Loading
      FullScreenLoader.openLoadingDialog(
          'Estamos processando sua informação', TImages.docerAnimation);

      //Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!signupFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Privacy Policy Agreement
      if (!acceptTerms.value) {
        Loaders.warningSnackBar(
            title: 'Aceite os termos de privacidade',
            message:
                'Para prosseguir precisamos que voce aceite os termos de privacidade');
        return;
      }

      //Register user in the Firebase Authentication & store user data in the Firebase
      final userCredential = await AuthenticationService.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //Save Authenticatade user in Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: name.text.trim(),
        lastName: lastName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phone.text.trim(),
        profilePicture: '',
        username: '',
      );

      // final userRepository = Get.put(UserRepository());
      // await userRepository.saveUserRecord(newUser);

      FullScreenLoader.stopLoading();

      //Show success message
      Loaders.successSnackBar(
          title: 'Parabéns', message: 'Seu cadastro foi concluído');

      //move to verify email screen
      Get.to(() => VerifyEmailPage(
            email: email.text.trim(),
          ));
    } catch (e) {
      FullScreenLoader.stopLoading();

      Loaders.errorSnackBar(
          title: 'Opa, algo deu errado', message: e.toString());
    }
  }
}

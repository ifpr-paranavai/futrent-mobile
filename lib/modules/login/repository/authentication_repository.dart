import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:futrent_mobile/modules/login/login_page.dart';
import 'package:futrent_mobile/pages/onboarding/onboarding_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show relevant screen
  screenRedirect() async {
    // LOCAL STORAGE
    deviceStorage.writeIfNull('isFirstTime', true);

    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginPage())
        : Get.offAll(() => const OnBoardingScreen());
  }

  /* ----------------- Email & Password sign-in ----------------- */
  /// [EmailAuthentication] - SignIn
  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      /*} on FirebaseAuthException catch (e) {
      
    } on FirebaseException catch (e) {
      
    } on FormatException catch (_) {
      
    } on PlatformException catch (e) {*/
    } catch (e) {
      throw 'Algo deu errado ao criar sua conta. Tente novamente mais tarde.';
    }
  }

  /// [EmailAuthentication] - Mail verification
  /// [EmailAuthentication] - ReAuthenticate user
  /// [EmailAuthentication] - Forget Password
  /* ----------------- Federated identity & social sign-in ----------------- */
  /// [GoogleAuthentication] - GOOGLE SIGN IN
  /// [FacebookAuthentication] - FACEBOOK SIGN IN

  /* ----------------- ./Federated identity & social sign-in ----------------- */
  /// [logoutUser] - Valid for any authentication
  /// [DeleteUser] - Remove user Auth and Firebase account
}

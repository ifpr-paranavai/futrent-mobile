// lib/modules/authentication/data/datasources/authentication_remote_datasource.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:futrent_mobile/packages/authentication/presentation/pages/login_page.dart';
import 'package:futrent_mobile/packages/authentication/presentation/pages/verify_email.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/services.dart';
import 'package:futrent_mobile/core/errors/firebase_auth_exceptions.dart';
import 'package:futrent_mobile/core/errors/firebase_exceptions.dart';
import 'package:futrent_mobile/core/errors/format_exceptions.dart';
import 'package:futrent_mobile/core/errors/platform_exceptions.dart';
import 'package:futrent_mobile/shared/view/home_navigation.dart';
import 'package:futrent_mobile/shared/view/onboarding/onboarding_page.dart';
import 'package:get/get.dart';

class AuthenticationRemoteDataSource extends GetxController {
  static AuthenticationRemoteDataSource get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show relevant screen
  screenRedirect() async {
    final user = _auth.currentUser;

    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const HomeNavigation());
      } else {
        Get.offAll(() => VerifyEmailPage(
              email: _auth.currentUser?.email,
            ));
      }
    } else {
      // LOCAL STORAGE
      deviceStorage.writeIfNull('isFirstTime', true);

      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginPage())
          : Get.offAll(() => const OnBoardingScreen());
    }
  }

  /* ----------------- Email & Password sign-in ----------------- */
  /// [EmailAuthentication] - Login
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Algo deu errado ao criar sua conta. Tente novamente mais tarde.';
    }
  }

  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Algo deu errado ao criar sua conta. Tente novamente mais tarde.';
    }
  }

  /// [EmailAuthentication] - Mail verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Algo deu errado ao criar sua conta. Tente novamente mais tarde.';
    }
  }

  /// [EmailAuthentication] - ReAuthenticate user
  /// [EmailAuthentication] - Forget Password
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Algo deu errado ao criar sua conta. Tente novamente mais tarde.';
    }
  }

  /* ----------------- Federated identity & social sign-in ----------------- */
  /// [GoogleAuthentication] - GOOGLE SIGN IN
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Algo deu errado ao criar sua conta. Tente novamente mais tarde.';
    }
  }

  /// [FacebookAuthentication] - FACEBOOK SIGN IN

  /* ----------------- ./Federated identity & social sign-in ----------------- */
  /// [logoutUser] - Valid for any authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginPage());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Algo deu errado ao criar sua conta. Tente novamente mais tarde.';
    }
  }

  /// [DeleteUser] - Remove user Auth and Firebase account
}

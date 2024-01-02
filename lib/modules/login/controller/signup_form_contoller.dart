import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

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

  Future<void> signUp() async {
    try {
      //Start Loading

      //Check internet connectivity

      //Form Validation

      //Privacy Policy Agreement

      //Register user in the Firebase Authentication & store user data in the Firebase

      //Save Authenticatade user in Firebase Firestore

      //Show success message
    } catch (e) {}
  }
}

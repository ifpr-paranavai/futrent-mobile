import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:futrent_mobile/modules/login/model/user_model.dart';
import 'package:futrent_mobile/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:futrent_mobile/utils/exceptions/firebase_exceptions.dart';
import 'package:futrent_mobile/utils/exceptions/format_exceptions.dart';
import 'package:futrent_mobile/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';

class UserService extends GetxController {
  static UserService get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
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
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:futrent_mobile/modules/login/model/user_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
    } catch (e) {
      throw 'Algo deu errado ao salvar os dados do usuário';
    }
  }
}

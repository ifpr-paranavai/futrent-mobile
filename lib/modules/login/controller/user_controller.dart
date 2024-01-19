import 'package:firebase_auth/firebase_auth.dart';
import 'package:futrent_mobile/modules/login/model/user_model.dart';
import 'package:futrent_mobile/modules/login/repository/user_repository.dart';
import 'package:futrent_mobile/utils/loaders.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  ///Save user Record From any Registration provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        final nameParts = UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final userName = UserModel.generateUsername(userCredentials.user!.displayName ?? '');

        final user = UserModel(
          id: userCredentials.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          email: userCredentials.user!.email ?? '',
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          profilePicture: userCredentials.user!.photoURL ?? '',
          username: userName,
        );

        //save user data
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      Loaders.errorSnackBar(title: 'Opa, algo deu errado', message: e.toString());
    }
  }
}

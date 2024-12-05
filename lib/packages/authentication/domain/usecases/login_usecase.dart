// lib/modules/authentication/domain/usecases/login_usecase.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';

class LoginUseCase {
  final AuthenticationRemoteDataSource _repository;

  LoginUseCase(this._repository);

  Future<UserCredential> call(String email, String password) async {
    return await _repository.loginWithEmailAndPassword(email, password);
  }
}

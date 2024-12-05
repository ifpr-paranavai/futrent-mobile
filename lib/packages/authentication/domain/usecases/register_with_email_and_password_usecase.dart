import 'package:firebase_auth/firebase_auth.dart';
import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';

class RegisterWithEmailAndPasswordUseCase {
  final AuthenticationRemoteDataSource _repository;

  RegisterWithEmailAndPasswordUseCase(this._repository);

  Future<UserCredential> call(String email, String password) async {
    return await _repository.registerWithEmailAndPassword(email, password);
  }
}

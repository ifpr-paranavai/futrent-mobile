import 'package:firebase_auth/firebase_auth.dart';
import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';

class SignInWithGoogleUseCase {
  final AuthenticationRemoteDataSource _repository;

  SignInWithGoogleUseCase(this._repository);

  Future<UserCredential> call(UserCredential userCredential) async {
    return await _repository.signInWithGoogle();
  }
}

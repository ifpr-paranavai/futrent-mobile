import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';

class SendPasswordResetEmailUseCase {
  final AuthenticationRemoteDataSource _repository;

  SendPasswordResetEmailUseCase(this._repository);

  Future<void> call(String email) async {
    return await _repository.sendPasswordResetEmail(email);
  }
}

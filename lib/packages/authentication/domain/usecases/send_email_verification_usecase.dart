import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';

class SendEmailVerificationUseCase {
  final AuthenticationRemoteDataSource _repository;

  SendEmailVerificationUseCase(this._repository);

  Future<void> call() async {
    return await _repository.sendEmailVerification();
  }
}

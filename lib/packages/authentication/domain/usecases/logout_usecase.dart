import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';

class LogoutUseCase {
  final AuthenticationRemoteDataSource _repository;

  LogoutUseCase(this._repository);

  Future<void> call(String email, String password) async {
    return await _repository.logout();
  }
}

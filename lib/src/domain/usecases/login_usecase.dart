import 'package:test_app_flutter2/src/domain/entities/login_entity.dart';
import 'package:test_app_flutter2/src/domain/repositories/login_repository.dart';

class LoginUsecase {
  final LoginRepository repository;

  LoginUsecase(this.repository);
  Future<bool> execute(LoginEntity loginData) async {
    return await repository.login(loginData);
  }
}

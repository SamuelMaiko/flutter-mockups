import 'package:test_app_flutter2/src/domain/entities/login_entity.dart';

abstract class LoginRepository {
  Future<bool> login(LoginEntity loginData);
}

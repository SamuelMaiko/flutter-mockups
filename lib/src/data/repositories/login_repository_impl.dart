import 'package:test_app_flutter2/src/data/datasources/login_remote_datasource.dart';
import 'package:test_app_flutter2/src/domain/entities/login_entity.dart';
import 'package:test_app_flutter2/src/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSourceImpl remoteDataSource;

  LoginRepositoryImpl(this.remoteDataSource);

  @override
  Future<bool> login(LoginEntity loginData) async {
    try {
      final result = await remoteDataSource.login(loginData);
      return result.status == 'success';
    } catch (e) {
      rethrow;
    }
  }
}

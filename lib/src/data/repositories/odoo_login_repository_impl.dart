import 'package:test_app_flutter2/src/data/datasources/odoo_remote_data_source.dart';
import 'package:test_app_flutter2/src/data/models/odoo_login_model.dart';
import 'package:test_app_flutter2/src/domain/repositories/odoo_login_repository.dart';

class OdooLoginRepositoryImpl implements OdooLoginRepository {
  final OdooRemoteDataSource remoteDataSource;

  OdooLoginRepositoryImpl(this.remoteDataSource);

  @override
  Future<OdooLoginModel> login({
    required String db,
    required String email,
    required String password,
  }) async {
    final session = await remoteDataSource.login(
      db: db,
      email: email,
      password: password,
    );
    return OdooLoginModel(
      userName: session.userName,
      userLogin: session.userLogin,
      userId: session.userId,
      sessionId: session.id,
    );
  }
}

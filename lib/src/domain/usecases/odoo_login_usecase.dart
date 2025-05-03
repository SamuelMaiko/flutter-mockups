import 'package:test_app_flutter2/src/data/models/odoo_login_model.dart';
import 'package:test_app_flutter2/src/domain/repositories/odoo_login_repository.dart';

class OdooLoginUsecase {
  final OdooLoginRepository repository;

  OdooLoginUsecase(this.repository);

  Future<OdooLoginModel> execute({
    required String db,
    required String email,
    required String password,
  }) async {
    return await repository.login(db: db, email: email, password: password);
  }
}

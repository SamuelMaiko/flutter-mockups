import 'package:test_app_flutter2/src/data/models/odoo_login_model.dart';

abstract class OdooLoginRepository {
  Future<OdooLoginModel> login({
    required String db,
    required String email,
    required String password,
  });
}

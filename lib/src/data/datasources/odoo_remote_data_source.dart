import 'package:odoo_rpc/odoo_rpc.dart';

class OdooRemoteDataSource {
  final OdooClient _client;

  OdooRemoteDataSource(String baseUrl) : _client = OdooClient(baseUrl);

  Future<OdooSession> login({
    required String db,
    required String email,
    required String password,
  }) async {
    try {
      final session = await _client.authenticate(db, email, password);
      // print("Login successful! User ID: $session.uid");
      return session;
    } on OdooException catch (e) {
      print("Login failed: ${e.message}");
      // return -1;
      rethrow;
    }
  }
}

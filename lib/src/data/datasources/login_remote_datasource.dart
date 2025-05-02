import 'package:test_app_flutter2/src/data/models/login_model.dart';
import 'package:test_app_flutter2/src/domain/entities/login_entity.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class LoginRemoteDataSource {
  Future<LoginModel> login(LoginEntity loginData);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final http.Client client;

  LoginRemoteDataSourceImpl(this.client);

  @override
  Future<LoginModel> login(LoginEntity loginData) async {
    final url = Uri.parse(
      // 'https://communitypage.pythonanywhere.com/api/auth/login/',
      'https://budgettyapp.pythonanywhere.com/api/auth/login/',
    );

    final response = await client.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': loginData.email,
        'password': loginData.password,
      }),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return LoginModel.fromJson(json);
    } else {
      throw Exception('Login failed: ${response.body}');
    }
  }
}

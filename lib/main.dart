import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:test_app_flutter2/bloc/login/login_bloc.dart';
import 'package:test_app_flutter2/bloc/mtn_form/mtn_form_bloc.dart';
import 'package:test_app_flutter2/bloc/signup/signup_bloc.dart';
import 'package:test_app_flutter2/pages/home/home_page.dart';
import 'package:test_app_flutter2/pages/login/login_page.dart';
import 'package:test_app_flutter2/pages/mtn_money/mtn_money_page.dart';
import 'package:test_app_flutter2/pages/signup/signup_page.dart';
import 'package:http/http.dart' as http;
import 'package:test_app_flutter2/src/data/datasources/login_remote_datasource.dart';
import 'package:test_app_flutter2/src/data/datasources/odoo_remote_data_source.dart';
import 'package:test_app_flutter2/src/data/repositories/login_repository_impl.dart';
import 'package:test_app_flutter2/src/data/repositories/odoo_login_repository_impl.dart';
import 'package:test_app_flutter2/src/domain/usecases/login_usecase.dart';
import 'package:test_app_flutter2/src/domain/usecases/odoo_login_usecase.dart';

void main() async {
  // final dataSource = OdooRemoteDataSource("http://localhost:8001");
  // try {
  //   final session = await dataSource.login(
  //     db: "odoo18",
  //     email: "admin",
  //     password: "admin",
  //   );
  //   print(session);
  //   final uid = session;
  //   print("Logged in as user with UID: $uid");
  // } catch (e) {
  //   print("Login failed: $e");
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mockups',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/':
        //     (context) =>
        //         BlocProvider(create: (_) => SignupBloc(), child: SignupPage()),
        '/': (context) {
          // final odooClient = OdooClient('http://localhost:8001');
          final baseUrl = "http://localhost:8001";
          final odooRemoteDataSource = OdooRemoteDataSource(baseUrl);
          final odooLoginRepository = OdooLoginRepositoryImpl(
            odooRemoteDataSource,
          );
          final odooLoginUseCase = OdooLoginUsecase(odooLoginRepository);
          return BlocProvider(
            create: (_) => LoginBloc(odooLoginUseCase),
            child: LoginPage(),
          );
        },
        '/home': (context) => HomePage(),
        '/mtn-money':
            (context) => BlocProvider(
              create: (_) => MtnFormBloc(),
              child: MtnMoneyPage(),
            ),
      },
    );
  }
}

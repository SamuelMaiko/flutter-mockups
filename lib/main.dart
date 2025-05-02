import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/login_bloc.dart';
import 'package:test_app_flutter2/pages/home/home_page.dart';
import 'package:test_app_flutter2/pages/login/login.dart';
import 'package:test_app_flutter2/pages/mtn_money/mtn_money.dart';

void main() {
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
        '/':
            (context) =>
                BlocProvider(create: (_) => LoginBloc(), child: LoginPage()),
        '/home': (context) => HomePage(),
        '/mtn-money': (context) => MtnMoneyPage(),
      },
    );
  }
}

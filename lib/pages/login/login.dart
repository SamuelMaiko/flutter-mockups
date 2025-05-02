import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/login_bloc.dart';
import 'package:test_app_flutter2/bloc/login_event.dart';
import 'package:test_app_flutter2/bloc/login_state.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // void _handleLogin() {
  //   String email = emailController.text;
  //   String password = passwordController.text;

  //   bloc.

  // }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LoginBloc>(context);
    return BlocConsumer(
      bloc: bloc,
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, "/home");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: Text("Login Success"),
              duration: Duration(seconds: 3),
            ),
          );
        } else if (state is LoginFailed) {
          Navigator.pushNamed(context, "/home");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text("Login Failed"),
              duration: Duration(seconds: 3),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Login", style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.lock),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                state is Loading
                    ? CircularProgressIndicator()
                    : Container(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          String email = emailController.text;
                          String password = passwordController.text;

                          bloc.add(
                            FormSubmitted(email: email, password: password),
                          );
                        },
                        // onPressed: () {
                        //   context.read<FormBloc>().add(FormSubmitted());
                        // },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 13),
                          backgroundColor: Color(0xFF1877F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Border radius here
                          ),
                        ),
                        child: Text(
                          "LOGIN".toUpperCase(),

                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        );
      },
    );
  }
}

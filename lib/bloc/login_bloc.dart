import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/login_event.dart';
import 'package:test_app_flutter2/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(InitialLogin()) {
    on<FormSubmitted>((FormSubmitted event, Emitter<LoginState> emit) async {
      emit(Loading());
      await Future.delayed(Duration(seconds: 3));

      if (event.email == "wow@gmail.com" && event.password == "1234") {
        emit(LoginSuccess());
      } else {
        emit(LoginFailed());
      }
    });
  }
}

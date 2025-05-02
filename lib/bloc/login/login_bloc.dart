import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/login/login_event.dart';
import 'package:test_app_flutter2/bloc/login/login_state.dart';
import 'package:test_app_flutter2/src/domain/entities/login_entity.dart';
import 'package:test_app_flutter2/src/domain/usecases/login_usecase.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase loginUsecase;

  LoginBloc(this.loginUsecase) : super(InitialLogin()) {
    on<FormSubmitted>((FormSubmitted event, Emitter<LoginState> emit) async {
      emit(Loading());
      // if (event.email == "wow@gmail.com" && event.password == "1234") {
      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        final loginData = LoginEntity(
          email: event.email,
          password: event.password,
        );

        final isLoggedIn = await loginUsecase.execute(loginData);

        if (isLoggedIn) {
          emit(LoginSuccess());
        } else {
          emit(LoginFailed());
        }
      } else {
        emit(unFilledDetails());
      }
    });
  }
}

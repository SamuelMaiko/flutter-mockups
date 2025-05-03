import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/login/login_event.dart';
import 'package:test_app_flutter2/bloc/login/login_state.dart';
import 'package:test_app_flutter2/src/domain/entities/login_entity.dart';
// import 'package:test_app_flutter2/src/domain/usecases/login_usecase.dart';
import 'package:test_app_flutter2/src/domain/usecases/odoo_login_usecase.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final OdooLoginUsecase odooLoginUsecase;

  LoginBloc(this.odooLoginUsecase) : super(InitialLogin()) {
    on<FormSubmitted>((FormSubmitted event, Emitter<LoginState> emit) async {
      emit(Loading());
      // if (event.email == "wow@gmail.com" && event.password == "1234") {
      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        // final loginData = LoginEntity(
        //   email: event.email,
        //   password: event.password,
        // );

        final userData = await odooLoginUsecase.execute(
          db: "odoo18",
          email: event.email,
          password: event.password,
        );

        if (userData.userId != -1 && userData.sessionId.isNotEmpty) {
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

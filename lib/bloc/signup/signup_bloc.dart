import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/signup/signup_event.dart';
import 'package:test_app_flutter2/bloc/signup/signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<FormSubmitted>((FormSubmitted event, Emitter<SignupState> emit) async {
      emit(SignupLoading());
      if (event.username.isNotEmpty &&
          event.confirmPassword.isNotEmpty &&
          event.email.isNotEmpty &&
          event.password.isNotEmpty) {
        emit(SignupSuccess());
      } else {
        emit(SignupWarning(message: "Fill all fields"));
      }
    });
  }
}

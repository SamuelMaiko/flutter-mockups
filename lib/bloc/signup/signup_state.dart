abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {}

class SignupFailed extends SignupState {}

class SignupWarning extends SignupState {
  final String? message;

  SignupWarning({this.message});
}

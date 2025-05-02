abstract class LoginEvent {}

class FormSubmitted extends LoginEvent {
  final String email;
  final String password;
  FormSubmitted({required this.email, required this.password});
}


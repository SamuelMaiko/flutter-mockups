abstract class SignupEvent {}

class FormSubmitted extends SignupEvent {
  final String username;
  final String email;
  final String password;
  final String confirmPassword;

  FormSubmitted({
    required this.username,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}

class LoginEntity {
  final String email;
  final String password;

  LoginEntity({required this.email, required this.password});

  @override
  String toString() {
    return 'LoginEntity{email: $email, password: $password}';
  }
}

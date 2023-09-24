class RegisterRequest {
  final String confirmPassword;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final String title;
  final String acceptTerms;

  RegisterRequest({
    this.title = '',
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.acceptTerms,
  });
}

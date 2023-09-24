import 'package:equatable/equatable.dart';

class LoginRequest extends Equatable {
  final String email;
  final String password;
  final bool isPersistent;

  const LoginRequest({
    required this.email,
    required this.password,
    this.isPersistent = true,
  });

  @override
  List<Object> get props => [
        email,
        password,
        isPersistent,
      ];
}

part of 'signin_bloc.dart';

class SigninEvent extends Equatable {
  final String username, password;
  final bool rememberMe;

  const SigninEvent({
    required this.username,
    required this.password,
    this.rememberMe = true,
  });

  @override
  List<Object> get props => [
        username,
        password,
        rememberMe,
      ];
}

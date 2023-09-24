part of 'signin_bloc.dart';

class SigninState extends Equatable {
  const SigninState();

  @override
  List<Object> get props => [];
}

class SigninInitial extends SigninState {}

class SigninLoading extends SigninState {}

class SigninSuccess extends SigninState {
  final LoginResponse response;

  const SigninSuccess(this.response);

  @override
  List<Object> get props => [response];
}

class SigninFailure extends SigninState {
  final String message;

  const SigninFailure(this.message);

  @override
  List<Object> get props => [message];
}

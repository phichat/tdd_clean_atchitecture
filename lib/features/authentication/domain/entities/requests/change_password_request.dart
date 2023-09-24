import 'package:equatable/equatable.dart';

class ChangePasswordRequest extends Equatable {
  final String accountId;
  final String confirmPassword;
  final String password;

  const ChangePasswordRequest({
    required this.accountId,
    required this.confirmPassword,
    required this.password,
  });

  @override
  List<Object> get props => [accountId, confirmPassword, password];
}

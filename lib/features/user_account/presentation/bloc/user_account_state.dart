part of 'user_account_bloc.dart';

abstract class UserAccountState extends Equatable {
  const UserAccountState();  

  @override
  List<Object> get props => [];
}
class UserAccountInitial extends UserAccountState {}

part of 'fogot_password_bloc.dart';

sealed class FogotPasswordState extends Equatable {
  const FogotPasswordState();
  
  @override
  List<Object> get props => [];
}

final class FogotPasswordInitial extends FogotPasswordState {}

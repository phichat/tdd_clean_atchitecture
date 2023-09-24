import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_account_event.dart';
part 'user_account_state.dart';

class UserAccountBloc extends Bloc<UserAccountEvent, UserAccountState> {
  UserAccountBloc() : super(UserAccountInitial()) {
    on<UserAccountEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

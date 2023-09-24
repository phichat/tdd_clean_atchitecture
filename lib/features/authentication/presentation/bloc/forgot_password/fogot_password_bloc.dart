import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fogot_password_event.dart';
part 'fogot_password_state.dart';

class FogotPasswordBloc extends Bloc<FogotPasswordEvent, FogotPasswordState> {
  FogotPasswordBloc() : super(FogotPasswordInitial()) {
    on<FogotPasswordEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

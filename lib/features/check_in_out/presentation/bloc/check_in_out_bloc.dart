import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'check_in_out_event.dart';
part 'check_in_out_state.dart';

class CheckInOutBloc extends Bloc<CheckInOutEvent, CheckInOutState> {
  CheckInOutBloc() : super(CheckInOutInitial()) {
    on<CheckInOutEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_clean_atchitecture/features/authentication/domain/entities/entities.dart';

import '../../../domain/usecases/login.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc({
    required Login login,
  })  : _login = login,
        super(SigninInitial()) {
    on<SigninEvent>(_signIn);
  }

  final Login _login;

  _signIn(SigninEvent event, Emitter emit) async {
    emit(SigninLoading());

    final usecase = await _login(LoginRequest(
      email: event.username,
      password: event.password,
    ));

    usecase.fold(
      (l) => emit(SigninFailure(l.message)),
      (r) => emit(SigninSuccess(r)),
    );
  }
}

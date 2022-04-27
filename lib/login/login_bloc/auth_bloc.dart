import 'package:bloc/bloc.dart';

import 'package:mediate/data/repositories/auth_repository.dart';
import 'package:mediate/login/login_bloc/login_auth_state.dart';


import 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(AuthLoggedOutState()) {
    // When User Presses the SignIn Button, we will send the SignInRequested Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<SignInRequested>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await authRepository.signIn(email: event.email, password: event.pass);
        emit(AuthLoggedInState());
      } catch (e) {
        emit(AuthErrorState(e.toString()));
        emit(AuthLoggedOutState());
      }
    });
    // When User Presses the SignUp Button, we will send the SignUpRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<SignUpRequested>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await authRepository.signUp(email: event.email, password: event.pass);
        emit(AuthLoggedInState());
      } catch (e) {
        emit(AuthErrorState(e.toString()));
        emit(AuthLoggedInState());
      }
    });
    // When User Presses the Google Login Button, we will send the GoogleSignInRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<GoogleSignInRequested>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await authRepository.signInWithGoogle();
        emit(AuthLoggedInState());
      } catch (e) {
        emit(AuthErrorState(e.toString()));
        emit(AuthLoggedOutState());
      }
    });
    // When User Presses the SignOut Button, we will send the SignOutRequested Event to the AuthBloc to handle it and emit the UnAuthenticated State
    on<SignOutRequested>((event, emit) async {
      emit(AuthLoadingState());
      await authRepository.signOut();
      emit(AuthLoggedOutState());
    });
  }
}

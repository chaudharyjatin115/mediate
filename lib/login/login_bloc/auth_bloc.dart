import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mediate/login/login_bloc/auth_event.dart';
import 'package:mediate/login/login_bloc/login_auth_state.dart';

import '../../auth/auth_error.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthStateLoggedOut(isLoading: false)) {
    on<AuthEventEmailRegister>(
      (event, emit) async {
        // start loading
        emit(
          const AuthStateIsInRegistrationView(isLoading: true),
        );
//getting the email and password from event
        final email = event.email;
        final password = event.password;
        try {
          // creating a user with email and password
          final credential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: password);
          emit(AuthStateLoggedIn(user: credential.user!, isLoading: false));
        } on FirebaseAuthException catch (e) {
          print(e);
          emit(
            AuthStateIsInRegistrationView(
              isLoading: false,
              authError: AuthError.from(e),
            ),
          );
        }
      },
    );
    on<AuthEventEmailLogin>((event, emit) async {
      emit(
        const AuthStateLoggedOut(isLoading: true),
      );
      try {
        final email = event.email;
        final password = event.password;
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        final user = credential.user!;
        emit(AuthStateLoggedIn(user: user, isLoading: false));
      } on FirebaseAuthException catch (e) {
        emit(
          AuthStateLoggedOut(
            isLoading: false,
            authError: AuthError.from(e),
          ),
        );
      }
    });
    on<AuthEventGotoRegister>(
      (event, emit) => emit(
        const AuthStateIsInRegistrationView(isLoading: false),
      ),
    );
    on<AuthEventLogout>(
      (event, emit) async {
        await FirebaseAuth.instance.signOut();
        emit(const AuthStateLoggedOut(isLoading: false));
      },
    );
    on<AuthEventInLoginView>((event, emit) {
      emit(const AuthStateLoggedOut(isLoading: false));
    });
    on<AuthEventInitialize>(
      (event, emit) async {
        final user = FirebaseAuth.instance.currentUser;
        if (user == null) {
          emit(const AuthStateLoggedOut(isLoading: false));
        } else {
          emit(AuthStateLoggedIn(user: user, isLoading: false));
        }
      },
    );
    on<AuthEventGoogleSignIn>(
      (event, emit) async {
        const AuthStateLoggedOut(isLoading: false);
        try {
          final GoogleSignIn googleSignIn = GoogleSignIn();
          final GoogleSignInAccount? googleSignInAccount =
              await googleSignIn.signIn();
          if (googleSignInAccount != null) {
            final GoogleSignInAuthentication googleSignInAuthentication =
                await googleSignInAccount.authentication;
            final AuthCredential credential = GoogleAuthProvider.credential(
                accessToken: googleSignInAuthentication.accessToken,
                idToken: googleSignInAuthentication.idToken);
            final UserCredential userCredential =
                await FirebaseAuth.instance.signInWithCredential(credential);
            emit(AuthStateLoggedIn(
                user: userCredential.user!, isLoading: false));
          }
        } on FirebaseAuthException catch (e) {
          emit(AuthStateLoggedOut(
              isLoading: false, authError: AuthError.from(e)));
        }
      },
    );
    on<AuthEventDeleteAccount>((event, emit) async {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        emit(const AuthStateLoggedOut(isLoading: true));
        return;
      } else {
        emit(AuthStateLoggedIn(user: user, isLoading: false));
      }
      try {
        await user.delete();
        await FirebaseAuth.instance.signOut();
        if (user == null) {
          emit(const AuthStateLoggedOut(isLoading: false));
        } else {
          emit(AuthStateLoggedIn(user: user, isLoading: false));
        }
      } on FirebaseAuthException catch (e) {
        emit(AuthStateLoggedIn(
            user: user, isLoading: false, authError: AuthError.from(e)));
      }
    });
  }
}

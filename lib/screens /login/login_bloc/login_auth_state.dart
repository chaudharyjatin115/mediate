import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoggedInState extends AuthState {
  final User firebaseUser;
  AuthLoggedInState(this.firebaseUser);
}

class AuthLoggedOutState extends AuthState {}

class AuthErrorState extends AuthState {
  String? error;
  AuthErrorState(this.error);
}

class AuthLoadingState extends AuthState {}

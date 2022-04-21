import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class AuthState extends Equatable {}

class AuthInitialState extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AuthLoggedInState extends AuthState {
  

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AuthLoggedOutState extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthErrorState extends AuthState {
  String? error;
  AuthErrorState(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}

class AuthLoadingState extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

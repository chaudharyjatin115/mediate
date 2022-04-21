
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class signInRequested extends AuthEvent {
  final String email;
  final String pass;

  signInRequested(this.email, this.pass);
}

class signUpRequested extends AuthEvent {
  final String email;
  final String pass;

  signUpRequested(this.email, this.pass);
}

class GoogleSignInRequested extends AuthEvent {}

class signOutRequested extends AuthEvent {}

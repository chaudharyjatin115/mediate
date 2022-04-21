
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInRequested extends AuthEvent {
  final String email;
  final String pass;

  SignInRequested(this.email, this.pass);
}

class SignUpRequested extends AuthEvent {
  final String email;
  final String pass;

  SignUpRequested(this.email, this.pass);
}

class GoogleSignInRequested extends AuthEvent {}

class SignOutRequested extends AuthEvent {}

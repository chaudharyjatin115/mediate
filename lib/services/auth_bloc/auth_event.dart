

import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

@immutable
class AuthEventEmailLogin implements AuthEvent {
  final String email;
  final String password;

  const AuthEventEmailLogin({required this.email, required this.password});
}

@immutable
class AuthEventEmailRegister implements AuthEvent {
  final String email;
  final String password;

  const AuthEventEmailRegister({required this.email, required this.password});
}

@immutable
class AuthEventGoogleSignIn implements AuthEvent {}

@immutable
class AuthEventLogout implements AuthEvent {}

@immutable
class AuthEventGotoRegister implements AuthEvent {}

@immutable
class AuthEventGotoLogin implements AuthEvent {}

@immutable
class AuthEventInRegisterView implements AuthEvent {}

class AuthEventInitialize implements AuthEvent {

}

class AuthEventDeleteAccount implements AuthEvent {}

class AuthEventInLoginView implements AuthEvent {

}
@immutable
class AuthEventInIntroView implements AuthEvent {}

class AuthEventFirstRun implements AuthEvent {}

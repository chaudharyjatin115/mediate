import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:mediate/services/auth/auth_error.dart';

@immutable
abstract class AuthState {
  final bool isLoading;
  final AuthError? authError;
  final User? user;
  const AuthState({
    this.user,
    required this.isLoading,
    this.authError,
  });
}

@immutable
class AuthStateLoggedIn extends AuthState {
  final User user;
  const AuthStateLoggedIn(
      {required this.user, required bool isLoading, AuthError? authError})
      : super(isLoading: isLoading);
  @override
  String toString() =>
      'AppStateLoggedOut,isLoadin=$isLoading,authError=$authError';
}

@immutable
class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut({required bool isLoading, AuthError? authError})
      : super(isLoading: isLoading);
  @override
  String toString() =>
      'AppStateLoggedOut,isLoadin=$isLoading,authError=$authError';
}

@immutable
class AuthStateIsInRegistrationView extends AuthState {
  const AuthStateIsInRegistrationView(
      {AuthError? authError, required bool isLoading})
      : super(isLoading: isLoading, authError: authError);
  @override
  String toString() =>
      'AppStateLoggedOut,isLoadin=$isLoading,authError=$authError';
}

@immutable
class AuthStateIsFirstRun extends AuthState {
  const AuthStateIsFirstRun({required bool isLoading})
      : super(isLoading: isLoading);
}

// getting user from authState
extension GetUser on AuthState {
  User? get user {
    final cls = this;
    if (cls is AuthStateLoggedIn) {
      return cls.user;
    } else {
      return null;
    }
  }
}

import 'package:equatable/equatable.dart';


abstract class AuthState extends Equatable {}

class AuthInitialState extends AuthState {
  @override

  List<Object?> get props => throw UnimplementedError();
}

class AuthLoggedInState extends AuthState {
  

  @override

  List<Object?> get props => [];
}

class AuthLoggedOutState extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthErrorState extends AuthState {
  final String? error;
  AuthErrorState(this.error);

  @override
 
  List<Object?> get props => [error];
}

class AuthLoadingState extends AuthState {
  @override
  
  List<Object?> get props => [];
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/screens%20/login/login_bloc/login_auth_state.dart';

class EmailAuthCubit extends Cubit<AuthState> {
  EmailAuthCubit() : super(AuthInitialState());
  void SignInWithMail() {}
}

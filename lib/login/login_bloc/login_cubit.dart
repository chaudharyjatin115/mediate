import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'login_auth_state.dart';

class EmailAuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  

  EmailAuthCubit() : super(AuthInitialState()) {
    User? user = _firebaseAuth.currentUser;
    if (user != null) {
      emit(AuthLoggedInState(user));
    } else {
      emit(AuthLoggedOutState());
    }
  }
  // ignore: non_constant_identifier_names
  void SignInWithMail() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    try {
      
      getGoogleUser(googleUser);
      emit(AuthLoadingState());
    } on FirebaseAuthException catch (error) {
      emit(AuthErrorState(error.message));
    }
  }

  void getGoogleUser(GoogleSignInAccount? googleUser) async {
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
  }

  void verifyAccount(GoogleSignInAuthentication googleAuth) async {
    emit(AuthLoadingState());
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
  }

  void SignInWithPhone(GoogleAuthCredential credential) async {
    emit(AuthLoadingState());
    try {
      final googleAuthcred =
          await _firebaseAuth.signInWithCredential(credential);
      if (googleAuthcred.user != null) {
        emit(AuthLoggedInState(googleAuthcred.user!));
      }
    } on FirebaseAuthException catch (error) {
      emit(AuthErrorState(error.message));
    }
  }
}

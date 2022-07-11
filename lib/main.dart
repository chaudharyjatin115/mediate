import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/firebase_options.dart';
import 'package:mediate/loading/loading_screen.dart';
import 'package:mediate/login/login_bloc/auth_bloc.dart';
import 'package:mediate/login/login_bloc/auth_event.dart';
import 'package:mediate/login/login_bloc/login_auth_state.dart';
import 'package:mediate/presentation/home/home_screen.dart';
import 'package:mediate/presentation/login_signUp/sign_up_screen.dart';

import 'dialogs/show_auth_error.dart';
import 'presentation/login_signUp/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthBloc()..add(AuthEventInitialize()),
        child: MaterialApp(
      theme: ThemeData(
        // navigationBarTheme
        //     NavigationBarThemeData(backgroundColor: Color(0x00ffffff)),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(headline1: TextStyle(color: Colors.white)),

        scaffoldBackgroundColor: const Color(0xff05164a),
        primarySwatch: Colors.deepPurple,
      ),
      home: BlocConsumer<AuthBloc, AuthState>(
        builder: ((context, authState) {
          if (authState is AuthStateLoggedIn) {
            return const HomeScreen();
          } else if (authState is AuthStateLoggedOut) {
            return LoginView();
          } else if (authState is AuthStateIsInRegistrationView) {
            return SignUpScreen();
          } else {
            return Container();
          }
        }),
        listener: (context, appState) {
          if (appState.isLoading) {
            return LoadingScreen.instance()
                .show(context: context, text: 'loading...');
          } else {
            LoadingScreen.instance().hide();
          }
          // we are going to deal with every auth error in one place
          final authError = appState.authError;
          if (authError != null) {
            showAuthError(authError: authError, context: context);
          }
        },
      ),
        ));
  }
}

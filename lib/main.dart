import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/screens%20/home_screen.dart';

import 'data/repositories/auth_repository.dart';
import 'login/login_bloc/auth_bloc.dart';

import 'login/login_bloc/login_auth_state.dart';
import 'login/login_screen.dart';
import 'screens /on_boarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
            authRepository: RepositoryProvider.of<AuthRepository>(context)),
        child: MaterialApp(
          theme: ThemeData(
            // navigationBarTheme
            //     NavigationBarThemeData(backgroundColor: Color(0x00ffffff)),
            fontFamily: 'Poppins',
            textTheme:
                const TextTheme(headline1: TextStyle(color: Colors.white)),

            scaffoldBackgroundColor: const Color(0xff05164a),
            primarySwatch: Colors.deepPurple,
          ),
          home: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthLoggedInState) {
                return HomeScreen(key: key);
              } else if (state is AuthLoggedOutState) {
                return Loginscreen();
              } else if (state is AuthErrorState) {
                return Scaffold(
                  body: Column(
                    children: [],
                  ),
                );
              } else {
                return OnBoardingScreen();
              }
            },
          ),
        ),
      ),
    );
  }
}
class BlocNavigate extends StatelessWidget {
  const BlocNavigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthLoggedInState) {
          return const HomeScreen();
        } else {
          return const OnBoardingScreen();
        }
      },
    );
  }
}

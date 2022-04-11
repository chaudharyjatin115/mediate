import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/login/login_bloc/login_cubit.dart';
import 'package:mediate/screens%20/home_screen.dart';
import 'package:mediate/screens%20/on_boarding_screen.dart';
import 'package:mediate/screens%20/playlist_screen.dart';
import 'package:mediate/screens%20/sign_up_screen.dart';

import 'login/login_screen.dart';


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
    return BlocProvider(
      create: (context) => EmailAuthCubit(),
      child: MaterialApp(
        theme: ThemeData(
          // navigationBarTheme
          //     NavigationBarThemeData(backgroundColor: Color(0x00ffffff)),
          fontFamily: 'Poppins',
          textTheme: const TextTheme(headline1: TextStyle(color: Colors.white)),

          scaffoldBackgroundColor: const Color(0xff05164a),
          primarySwatch: Colors.deepPurple,
        ),
        initialRoute: 'OnBoardScreen',
        // ignore: prefer_const_constructors
        routes: {
          'OnBoardScreen': (context) => const OnBoardingScreen(),
          'LoginScreen': (context) => const Loginscreen(),
          'SignUpScreen': (context) => const SignUpScreen(),
          'HomeScreen': (context) => const HomeScreen(),
          'PlayListScreen': (context) => const PlayListScreen(),
        },
      ),
    );
  }
}

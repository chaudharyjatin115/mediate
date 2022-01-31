import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mediate/screens%20/home_screen.dart';
import 'package:mediate/screens%20/login_screen.dart';
import 'package:mediate/screens%20/on_boarding_screen.dart';
import 'package:mediate/screens%20/playlist_screen.dart';
import 'package:mediate/screens%20/sign_up_screen.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(

        // navigationBarTheme
        //     NavigationBarThemeData(backgroundColor: Color(0x00ffffff)),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(headline1: TextStyle(color: Colors.white)),

        scaffoldBackgroundColor: const Color(0xff05164a),
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: 'PlayListScreen',
      // ignore: prefer_const_constructors
      routes: {'OnBoardScreen':(contex)=>OnBoardingScreen(),
      'LoginScreen':(context)=>const Loginscreen(),
      'SignUpScreen':(context)=>const SignUpScreen(),
      'HomeScreen':(context)=>const HomeScreen(),
        'PlayListScreen': (contex) => const PlayListScreen(),

       
      },
      
    );
  }
}

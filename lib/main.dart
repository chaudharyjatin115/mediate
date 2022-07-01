
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/login_signUp/login_screen.dart';

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
    return MaterialApp(
        theme: ThemeData(
          // navigationBarTheme
          //     NavigationBarThemeData(backgroundColor: Color(0x00ffffff)),
          fontFamily: 'Poppins',
          textTheme: const TextTheme(headline1: TextStyle(color: Colors.white)),

          scaffoldBackgroundColor: const Color(0xff05164a),
          primarySwatch: Colors.deepPurple,
        ),
        home: Loginscreen());
  }
}

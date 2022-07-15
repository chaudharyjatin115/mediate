import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/firebase_options.dart';
import 'package:mediate/screens/loading/loading_screen.dart';
import 'package:mediate/screens/home/home_screen.dart';

import 'package:mediate/screens/player/player_screen.dart';
import 'dialogs/show_auth_error.dart';
import 'extensions/shared_pref_extension.dart';
import 'screens/login_signUp/login_screen.dart';
import 'services/auth_bloc/auth_bloc.dart';
import 'services/auth_bloc/auth_event.dart';
import 'services/auth_bloc/login_auth_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @mustCallSuper
  void initState() {
    super.initState();
    myAppState();
  }

  bool isLoggedIn = false;

// checks if app if launched first time and then sets the boolean to true
  myAppState() {
    MySharedPreferences.instance
        .getBooleanValue("isfirstRun")
        .then((value) => setState(() {
              isLoggedIn = value;
            }));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthBloc()
          ..add(isLoggedIn ? AuthEventInitialize() : AuthEventFirstRun()),
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
            home: BlocConsumer<AuthBloc, AuthState>(
              builder: ((context, authState) {
                return const PlayerScreen();
                // if (authState is AuthStateLoggedIn) {
                //   return const HomeScreen();
                // } else if (authState is AuthStateLoggedOut) {
                //   return const LoginView();
                // } else if (authState is AuthStateIsInRegistrationView) {
                //   return const SignUpScreen();
                // } else if (authState is AuthStateIsFirstRun) {
                //   return const OnBoardingScreen();
                // } else {
                //   return Container();
                // }
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
            )));
  }
}

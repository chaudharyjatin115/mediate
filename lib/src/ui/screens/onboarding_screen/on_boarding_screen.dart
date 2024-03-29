import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/src/blocs/auth_bloc/auth_bloc.dart';
import 'package:mediate/src/blocs/auth_bloc/auth_event.dart';

import 'package:mediate/src/ui/widgets/custom_login_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05164a),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  height: 350,
                  image: AssetImage('assets/images/Meditation-working.jpg'),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Mediate',
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Welcome to Mediate ',
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  'A wonderful Streaming app with different ASMR ',
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  'sounds to calm you through power of ASMR',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomLoginButton(
                  title: 'Get Started',
                  buttonColor: Colors.black12,
                  onTap: () {
                    context.read<AuthBloc>().add(AuthEventInRegisterView());
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomLoginButton(
                  title: 'Log in',
                  buttonColor: Colors.black12,
                  onTap: () {
                    context.read<AuthBloc>().add(AuthEventInLoginView());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

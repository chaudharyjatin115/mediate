import 'package:flutter/material.dart';
import 'package:mediate/widgets/custom_login_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05164a),
      body: SafeArea(
        child: SingleChildScrollView(
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
                  'Medicate',
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Welcome to Medicate ',
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
                  Navigator.pushNamed(context, 'SignUpScreen');
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomLoginButton(
                title: 'Log in',
                buttonColor: Colors.black12,
                onTap: () {
                  Navigator.pushNamed(context, 'LoginScreen');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

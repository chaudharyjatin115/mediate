import 'package:flutter/material.dart';
import 'package:mediate/widgets/custom_input_field.dart';
import 'package:mediate/widgets/custom_login_button.dart';
import 'package:mediate/widgets/third_party_signIn_button.dart';
import 'package:mediate/widgets/welcome_text_Login.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const WelcomeText(),
              const SizedBox(height: 50),
              const InputTextField(
                title: 'Enter Username',
                isTrue: false,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const InputTextField(
                title: 'EnterPassword',
                isTrue: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomLoginButton(
                buttonColor: Colors.black12,
                title: 'Sign in',
              ),
              const SizedBox(height: 50),
              const Text(
                'or continue with',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ThirdPartySignInButton(
                    assetLink: 'assets/images/google-logo.png',
                  ),
                  ThirdPartySignInButton(
                      assetLink: 'assets/images/facebook-logo.png'),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member ? ',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register Now',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// ignore: must_be_immutable



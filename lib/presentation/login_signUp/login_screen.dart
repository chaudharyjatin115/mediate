

import 'package:flutter/material.dart';

import 'package:mediate/presentation/widgets/already_account_widget.dart';
import 'package:mediate/presentation/widgets/custom_input_field.dart';
import 'package:mediate/presentation/widgets/custom_login_button.dart';
import 'package:mediate/presentation/widgets/third_party_signin_button.dart';
import 'package:mediate/presentation/widgets/welcome_text_login.dart';


class Loginscreen extends StatelessWidget {
  Loginscreen({Key? key}) : super(key: key);
final emailController=TextEditingController();
final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const WelcomeText(),
            const SizedBox(height: 50),
            InputTextField(
              title: 'Enter Email',
              isTrue: false,
            controller: emailController,
            ),
            const SizedBox(
              height: 20.0,
            ),
            InputTextField(
              title: 'EnterPassword',
              isTrue: true,
              controller:passwordController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomLoginButton(
              buttonColor: Colors.black12,
              title: 'Sign in',
              onTap: () {},
            ),
            const SizedBox(height: 40),
            const Text(
              'or continue with',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ThirdPartySignInButton(
                  onTap: () async {},
                  assetLink: 'assets/images/google-logo.png',
                ),
                ThirdPartySignInButton(
                    onTap: () {}, assetLink: 'assets/images/facebook-logo.png'),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            AlreadyAccountWidget(
              primaryText: 'Not a member ? ',
              secondaryText: 'Register Now',
              onTap: () {
                Navigator.pushNamed(context, 'SignUpScreen');
              },
            ),
          ],
        ),
      ],
    ));
  }
}

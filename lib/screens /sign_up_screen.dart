import 'package:flutter/material.dart';
import 'package:mediate/widgets/already_account_widget.dart';
import 'package:mediate/widgets/custom_input_field.dart';
import 'package:mediate/widgets/custom_login_button.dart';
import 'package:mediate/widgets/third_party_signin_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text('Sign up'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Sign up with one of the following options',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ThirdPartySignInButton(
                      onTap: () {},
                      assetLink: 'assets/images/facebook-logo.png'),
                  ThirdPartySignInButton(
                      onTap: () {}, assetLink: 'assets/images/google-logo.png'),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InputTextField(title: 'Enter your Name', isTrue: false),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const InputTextField(
                        title: 'Enter Your email', isTrue: false),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const InputTextField(
                        title: 'Pick a Strong Password', isTrue: true),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CustomLoginButton(
                        onTap: () {
                          Navigator.pushNamed(context, 'HomeScreen');
                        },
                        buttonColor: Colors.black12,
                        title: 'Sign up'),
                    const SizedBox(
                      height: 30.0,
                    ),
                    AlreadyAccountWidget(
                      primaryText: 'already a member ?',
                      secondaryText: 'Log in',
                      onTap: () {
                        Navigator.pushNamed(context, 'LoginScreen');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

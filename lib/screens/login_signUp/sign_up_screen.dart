import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mediate/extensions/if_debugging.dart';

import 'package:mediate/services/auth_bloc/auth_bloc.dart';
import 'package:mediate/services/auth_bloc/auth_event.dart';
import 'package:mediate/widgets/already_account_widget.dart';
import 'package:mediate/widgets/custom_input_field.dart';
import 'package:mediate/widgets/custom_login_button.dart';
import 'package:mediate/widgets/third_party_signin_button.dart';

class SignUpScreen extends HookWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController(
        text: 'chaudharyjatin115@gmail.com'.ifDebugging);
    final passwordController =
        useTextEditingController(text: 'J-56789albdb'.ifDebugging);
    final name = useTextEditingController();
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
                      onTap: () {
                        context.read<AuthBloc>().add(AuthEventGoogleSignIn());
                      },
                      assetLink: 'assets/images/google-logo.png'),
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
                    InputTextField(
                      title: 'Enter your Name',
                      isTrue: false,
                      controller: name,
                    ),
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
                    InputTextField(
                      title: 'Enter Your email',
                      isTrue: false,
                      controller: emailController,
                    ),
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
                    InputTextField(
                      title: 'Pick a Strong Password',
                      isTrue: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CustomLoginButton(
                        onTap: () {
                          final email = emailController.text;
                          final password = passwordController.text;
                          context.read<AuthBloc>().add(AuthEventEmailRegister(
                              email: email, password: password));
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
                        context.read<AuthBloc>().add(AuthEventGotoLogin());
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

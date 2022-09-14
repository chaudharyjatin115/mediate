import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:mediate/src/blocs/auth_bloc/auth_bloc.dart';
import 'package:mediate/src/blocs/auth_bloc/auth_event.dart';
import 'package:mediate/src/ui/widgets/already_account_widget.dart';
import 'package:mediate/src/ui/widgets/custom_input_field.dart';
import 'package:mediate/src/ui/widgets/third_party_signin_button.dart';
import 'package:mediate/src/ui/widgets/welcome_text_login.dart';

import '../../widgets/custom_login_button.dart';

class LoginView extends HookWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController(
      );
    final passwordController =
        useTextEditingController();
    return Scaffold(
      body: ListView(children: [
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
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomLoginButton(
                buttonColor: Colors.black12,
                title: 'Log in',
                onTap: () {
                  final email = emailController.text;
                  final password = passwordController.text;
                  context.read<AuthBloc>().add(
                      AuthEventEmailLogin(email: email, password: password));
                },
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
                    onTap: () {
                      context.read<AuthBloc>().add(AuthEventGoogleSignIn());
                    },
                    assetLink: 'assets/images/google-logo.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              AlreadyAccountWidget(
                  primaryText: 'Not a member ? ',
                  secondaryText: 'Register Now',
                  onTap: () {
                    context.read<AuthBloc>().add(AuthEventGotoRegister());
                  })
            ])
      ]),
    );
  }
}

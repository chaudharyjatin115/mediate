import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/login/login_bloc/auth_bloc.dart';
import 'package:mediate/login/login_bloc/login_auth_state.dart';
import 'package:mediate/screens%20/home_screen.dart';

import 'package:mediate/widgets/already_account_widget.dart';
import 'package:mediate/widgets/custom_input_field.dart';
import 'package:mediate/widgets/custom_login_button.dart';
import 'package:mediate/widgets/third_party_signin_button.dart';
import 'package:mediate/widgets/welcome_text_login.dart';

import 'login_bloc/auth_event.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthLoggedInState) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          }
          if (state is AuthErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.error.toString(),
                ),
              ),
            );
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is AuthLoggedOutState) {
              return ListView(
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
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InputTextField(
                      title: 'EnterPassword',
                      isTrue: true,
                      controller: _passwordController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                      CustomLoginButton(
                        buttonColor: Colors.black12,
                        title: 'Sign in',
                        onTap: () {
                          _createAccountWithEmailAndPassword(context);
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
                            onTap: () async {
                              _authenticateWithGoogle(context);
                            },
                            assetLink: 'assets/images/google-logo.png',
                          ),
                        ThirdPartySignInButton(
                            onTap: () {},
                            assetLink: 'assets/images/facebook-logo.png'),
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
              );
            } else {
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  void _createAccountWithEmailAndPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
        SignUpRequested(
          _emailController.text,
          _passwordController.text,
        ),
      );
    }
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(
      GoogleSignInRequested(),
    );
  }
}

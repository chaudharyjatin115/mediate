import 'package:flutter/material.dart';

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
              InputTextField(
                title: 'Enter Username',
                isTrue: false,
              ),
              const SizedBox(
                height: 20.0,
              ),
              InputTextField(
                title: 'EnterPassword',
                isTrue: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomLoginButton(),
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
                children: [
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
                  SizedBox(
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register Now',
                      style: TextStyle(color: Colors.blueGrey),
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

class ThirdPartySignInButton extends StatelessWidget {
  String? assetLink;
  ThirdPartySignInButton({Key? key, required this.assetLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 55,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.black12),
          child: Image.asset(assetLink!)),
    );
  }
}

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 60,
      width: 375.0,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Sign in'),
        style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}

// ignore: must_be_immutable
class InputTextField extends StatelessWidget {
  String? title;
  bool? isTrue;
  InputTextField({Key? key, required this.title, required this.isTrue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 380.0,
        color: Colors.black12,
        child: TextField(
          obscureText: isTrue!,
          textAlign: TextAlign.start,
          autocorrect: false,
          autofocus: true,
          decoration: InputDecoration(
            fillColor: Colors.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: title,
            hintStyle: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'Hello Again!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Center(
            child: Text(
              'Welcome  back  you ! ve',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w100),
            ),
          ),
          Center(
            child: Text(
              'been  misssed !',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w100),
            ),
          ),
        ],
      ),
    );
  }
}

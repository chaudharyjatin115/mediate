import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }
}

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
        color: Colors.black12,
        child: TextField(
          obscureText: isTrue!,
          textAlign: TextAlign.center,
          autocorrect: false,
          autofocus: true,
          decoration: InputDecoration(
            fillColor: Colors.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: title,
            hintStyle: const TextStyle(color: Colors.white),
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
      padding: const EdgeInsets.only(top: 60),
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
            height: 15.0,
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

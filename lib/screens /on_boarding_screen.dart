import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: const [
                  Image(
                    height: 800,
                    image: AssetImage('assets/images/Meditation-working.jpg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

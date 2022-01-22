import 'package:flutter/material.dart';


class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                width: 130,
                color: Colors.black12,
                child: TextButton(onPressed: () {}, child: Text('Sign up')))
          ],
        ),
      ),
    );
  }
}

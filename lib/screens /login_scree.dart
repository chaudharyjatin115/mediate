import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Loginscreen extends ConsumerWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

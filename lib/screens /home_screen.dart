import 'package:flutter/material.dart';
import 'package:mediate/widgets/image_header.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [ImageHeader()],
        ),
      ),
    );
  }
}

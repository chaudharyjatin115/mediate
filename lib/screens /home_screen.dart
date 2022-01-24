import 'package:flutter/material.dart';
import 'package:mediate/widgets/image_header.dart';
import 'package:mediate/widgets/mood_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            ImageHeader(),
            MoodBar(),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Recently Played',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MoodBar extends StatelessWidget {
  const MoodBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
            color: const Color(0xff1A2688),
            borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                '🐣',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 8.0),
              child: Text(
                'How are you feeling ?',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

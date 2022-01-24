import 'package:flutter/material.dart';

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

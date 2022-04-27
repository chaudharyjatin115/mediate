import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String? title;
  final bool? isTrue;
  final TextEditingController? controller;
  const InputTextField(
      {Key? key,
      required this.title,
      required this.isTrue,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 380.0,
        color: Colors.black12,
        child: TextField(
          style: const TextStyle(color: Colors.grey),
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

import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  final Color? buttonColor;
  final String? title;
  final Function()? onTap;
  const CustomLoginButton(
      {Key? key,
      required this.buttonColor,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 60,
      width: 375.0,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title!),
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}

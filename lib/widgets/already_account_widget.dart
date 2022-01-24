import 'package:flutter/material.dart';

class AlreadyAccountWidget extends StatelessWidget {
  final String? primaryText;
  final String? secondaryText;
  const AlreadyAccountWidget({
    Key? key,
    required this.primaryText,
    required this.secondaryText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          primaryText!,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 1,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            secondaryText!,
            style: const TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}

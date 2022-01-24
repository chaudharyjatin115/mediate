import 'package:flutter/material.dart';

class ThirdPartySignInButton extends StatelessWidget {
  final String? assetLink;
  const ThirdPartySignInButton({Key? key, required this.assetLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 55,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.black12),
          child: Image.asset(assetLink!)),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!.displayName;
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 220.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: const AssetImage(
                  'assets/images/topbar.jpeg',
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage('assets/images/face_co.png'),
              ),
              IconButton(
                highlightColor: Colors.black,
                color: Colors.white,
                iconSize: 25.0,
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 110.0, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Afternoon',
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.grey[300],
                  fontSize: 20,
                ),
              ),
              Text(
                '$user',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

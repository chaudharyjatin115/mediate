import 'package:flutter/material.dart';
import 'package:mediate/data/data_private.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff05164a),
        centerTitle: true,
        title: const Icon(Icons.thumbs_up_down),
      ),
      backgroundColor: const Color(0xff05164a),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 120, right: 120),
              child: SizedBox(
                height: 240,
                width: 280,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(audio1.coverImage!),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 120),
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle,
                        size: 100,
                      )),
                )
              ],
            )
          ]),
    );
  }
}

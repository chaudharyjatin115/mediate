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
              padding: const EdgeInsets.only(top: 100, left: 100, right: 100),
              child: SizedBox(
                height: 220,
                width: 500,
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
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 50,
                    )),
                // const SizedBox(width: 40),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, right: 30),
                  child: Center(
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle_fill_outlined,
                          size: 80,
                        )),
                  ),
                ),
                // const SizedBox(width: 50),
                IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_next,
                      size: 50,
                    )
                    ),

              ],
            ),

          ]),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:mediate/models/models.dart';
import 'package:mediate/widgets/player_controls.dart';
import 'package:mediate/widgets/volume_slider.dart';

class PlayerScreen extends StatelessWidget {
  final AudioCategory audio;
  const PlayerScreen({Key? key, required this.audio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff05164a),
        elevation: 0,
        centerTitle: true,
        title: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
        ),
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
                  image: NetworkImage(audio.coverImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 10,
            child: const LinearProgressIndicator(
              value: 20,
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          const PlayerControls(),
          // add player here
          const SizedBox(
            height: 60,
          ),

          const VolumeSlider()
        ],
      ),
    );
  }
}

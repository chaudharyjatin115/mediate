import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.skip_previous,
              size: 50,
            )),
        const SizedBox(width: 40),
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
        const SizedBox(width: 40),
        // const SizedBox(width: 50),
        IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.skip_next,
              size: 50,
            )),
      ],
    );
  }
}

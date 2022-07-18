import 'package:flutter/material.dart';

class VolumeSlider extends StatelessWidget {
  const VolumeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 60,
        ),
        const Icon(
          Icons.volume_up,
          color: Colors.white,
        ),
        SizedBox(
          width: 280,
          child: Slider(
            min: 1.0,
            max: 100.0,
            value: 100.0,
            onChanged: (double value) {},
          ),
        ),
      ],
    );
  }
}

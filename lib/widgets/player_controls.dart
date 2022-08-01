
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_bloc.dart';

import '../services/audio_player_bloc/audio_player_state.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 90),
        Padding(
          padding: const EdgeInsets.only(bottom: 30, right: 30),
          child: Center(
            child: BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
              builder: (context, state) {
                if (state is AudioPauseState) {
                  return IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle_fill_outlined,
                        size: 80,
                      ));
                } else {
                  return IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.pause_circle_filled,
                        size: 80,
                      ));
                }
              },
            ),
          ),
        ),
        const SizedBox(width: 90),
        // const SizedBox(width: 50),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/data/data_private.dart';

import 'package:mediate/screens/player/player_screen.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_bloc.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_event.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_state.dart';
import 'package:mediate/widgets/favourite_widget.dart';
import 'package:mediate/widgets/image_header.dart';
import 'package:mediate/widgets/mood_bar.dart';

import 'package:mediate/widgets/recently_played.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(3.0),
          child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  child: BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
                    builder: (context, state) {
                      if (state is AudioPlayState) {
                        return ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return PlayerScreen(
                                audio: state.audio!,
                              );
                            })));
                          },
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 16),
                          enabled: true,
                          tileColor: const Color(0xff283a75),
                          leading: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            height: 40,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(state.audio!.coverImage!)),
                            ),
                          ),
                          title: Text(
                            audio1Nature.name!,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.pause_circle_filled),
                            onPressed: () {
                              context
                                  .read<AudioPlayerBloc>()
                                  .add(AudioEventStop(audio: state.audio!));
                            },
                            color: Colors.white,
                          ),
                        );
                      } else if (state is AudioPauseState) {
                        return ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 16),
                          enabled: true,
                          onTap: () {},
                          tileColor: const Color(0xff283a75),
                          leading: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            height: 40,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(state.audio!.coverImage!)),
                            ),
                          ),
                          title: Text(
                            audio1Nature.name!,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.play_circle_filled),
                            onPressed: () {
                              context.read<AudioPlayerBloc>().add(
                                  AudioPlayEventRemote(audio: state.audio!));
                            },
                            color: Colors.white,
                          ),
                        );
                      } else if (state is AudioLoadingState) {
                        return Center(
                          child: Container(
                              width: 5,
                              height: 5,
                              child: CircularProgressIndicator()),
                        );
                      } else {
                        return Container();
                      }
                    },
                  )))),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageHeader(),
              const MoodBar(),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Recently Played',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const RecentlyPlayed(),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Favourites',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const FavouritesContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mediate/src/blocs/audio_player_bloc/audio_player_bloc.dart';
import 'package:mediate/src/blocs/audio_player_bloc/audio_player_event.dart';
import 'package:mediate/src/blocs/audio_player_bloc/audio_player_state.dart';
import 'package:mediate/src/resources/data/data_private.dart';
import 'package:mediate/src/ui/widgets/cached_image_provider.dart';
import 'package:mediate/src/ui/widgets/image_header.dart';
import 'package:mediate/src/ui/widgets/mood_bar.dart';
import 'package:mediate/src/ui/widgets/recently_played.dart';

import '../../widgets/playlist_widget.dart';

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
                          onTap: () {},
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 16),
                          enabled: true,
                          tileColor: const Color(0xff283a75),
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(13.0),
                              child: CachedImageProvider(
                                height: 40,
                                width: 45,
                                imageUrl: state.audio!.coverImage,
                              )),
                          title: Text(
                            state.audio!.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: IconButton(
                            iconSize: 35,
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
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(13.0),
                            child: CachedImageProvider(
                              height: 40,
                              width: 45,
                              imageUrl: state.audio!.coverImage,
                            ),
                          ),
                          title: Text(
                            state.audio!.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.play_circle_filled),
                            iconSize: 35,
                            onPressed: () {
                              context.read<AudioPlayerBloc>().add(
                                  AudioPlayEventRemote(audio: state.audio!));
                            },
                            color: Colors.white,
                          ),
                        );
                      } else if (state is AudioLoadingState) {
                        return const Center(
                          child: SizedBox(
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
                  'Study',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              RecentlyPlayed(),
              const SizedBox(
                height: 5.0,
              ),
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
                      'Study',
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
              PlaylistContainer(
                audioList: study,
              ),
              PlaylistContainer(audioList: audiosNature),
              PlaylistContainer(audioList: synthWave)
            ],
          ),
        ],
      ),
    );
  }
}

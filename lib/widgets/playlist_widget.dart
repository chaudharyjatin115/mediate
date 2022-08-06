import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_bloc.dart';

import 'package:mediate/widgets/cached_image_provider.dart';

import '../services/audio_player_bloc/audio_player_event.dart';

class PlaylistContainer extends StatelessWidget {
  List audioList;
  PlaylistContainer({
    Key? key,
    required this.audioList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: audioList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (() {
                context
                    .read<AudioPlayerBloc>()
                    .add(AudioPlayEventRemote(audio: audioList[index]));
              }),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff283a75),
                    borderRadius: BorderRadius.circular(20.0)),
                height: 125,
                width: 300,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 10, 12.0, 10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(13.0),
                              child: CachedImageProvider(
                                height: 105,
                                width: 107,
                                imageUrl: audioList[index].coverImage,
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              audioList[index].name,
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 17.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  width: 80,
                                  child: Center(
                                      child: Text(
                                    audioList[index].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(0.6),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                                const SizedBox(
                                  width: 11.0,
                                ),
                                Text(
                                  '${audioList[index].length} mins',
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

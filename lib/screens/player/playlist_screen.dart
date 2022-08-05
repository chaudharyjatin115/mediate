import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/data/data_private.dart';
import 'package:mediate/models/models.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_bloc.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_event.dart';
import 'package:mediate/widgets/cached_image_provider.dart';

// this is the screen which shows up when clicked on playlists it accepts audio list category as input
class PlayListScreen extends StatelessWidget {
  final AudioListCategory audioListCategory;
  const PlayListScreen({Key? key, required this.audioListCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: CachedImageProvider(
                      imageUrl: audioListCategory.coverListImage,
                      height: 250,
                      width: MediaQuery.of(context).size.width),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110.0, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Positioned(
                        left: 13,
                        child: Container(
                          height: 20,
                          width: 80,
                          child: Center(
                              child: Text(
                            audioListCategory.coverListName,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        audioListCategory.coverListName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            height: 40,
                            width: 80,
                            child: IconButton(
                              onPressed: () {
                                context.read<AudioPlayerBloc>().add(
                                    AudioPlayEventRemote(
                                        audio: audioListCategory
                                            .audioCatList.first));
                              },
                              icon: const Icon(
                                Icons.play_arrow,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Text(
                              '00:0${audioListCategory.audioCatList.length}:00',
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    audioListCategory.playlistInfo,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: audiosNature.length,
                    itemBuilder: (BuildContext contex, int index) {
                      return SizedBox(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 00, 10.0, 00),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: CachedImageProvider(
                                        imageUrl: audioListCategory
                                            .audioCatList[index].coverImage,
                                        height: 90,
                                        width: 90),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  audioListCategory.audioCatList[index].name,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                Text(
                                  audioListCategory
                                      .audioCatList[index].category,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 115.0),
                              child: Text(
                                '00:${audiosNature[index].length}:00',
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

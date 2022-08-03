import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediate/data/data_private.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_bloc.dart';
import 'package:mediate/services/audio_player_bloc/audio_player_event.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: randomList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              context
                  .read<AudioPlayerBloc>()
                  .add(AudioPlayEventRemote(audio: randomList[index]));
            },
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 7.0, 7.0, 0.0),
                      child: Container(
                        height: 110,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)),
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.8),
                                BlendMode.dstATop),
                            fit: BoxFit.cover,
                            image:
                                NetworkImage(randomList[index].coverImage),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 13,
                      child: Container(
                        height: 15,
                        width: 80,
                        child: Center(
                            child: Text(
                          randomList[index].name,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0, color: Colors.black),
                      color: const Color(0xff283a75),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Daily Calm',
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          '${randomList[index].length} mins',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

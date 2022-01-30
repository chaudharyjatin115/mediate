import 'package:flutter/material.dart';
import 'package:mediate/data/data_private.dart';

import 'package:mediate/widgets/image_header.dart';
import 'package:mediate/widgets/mood_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
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
          height: 10.0,
        ),
        const AudioContainer(),
        const SizedBox(
          height: 10,
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
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}

class AudioContainer extends StatelessWidget {
  const AudioContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: audios.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
                      child: Container(
                        height: 130,
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
                            image: AssetImage('${audios[index].coverImage}'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 13,
                      child: Container(
                        height: 20,
                        width: 80,
                        child: Center(
                            child: Text(
                          '${audios[index].name}',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  height: 60,
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
                          '${audios[index].length} mins',
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

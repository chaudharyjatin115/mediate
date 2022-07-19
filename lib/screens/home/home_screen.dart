import 'package:flutter/material.dart';
import 'package:mediate/data/data_private.dart';
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
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff1A2688),
              // color: const Color(0xff283a75),
              borderRadius: BorderRadius.circular(10.0),
            ),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7.0),
                  child: Image(
                    image: AssetImage(audio1.coverImage!),
                    height: 40,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  width: 120,
                ),
                IconButton(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  icon: const Icon(
                    Icons.play_circle_fill,
                    size: 50,
                  ),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //     child: const Icon(Icons.pause), onPressed: () {}),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Column(
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
        ));
  }
}

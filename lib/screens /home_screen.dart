
import 'package:flutter/material.dart';
import 'package:mediate/widgets/favourite_widget.dart';

import 'package:mediate/widgets/image_header.dart';
import 'package:mediate/widgets/mood_bar.dart';
import 'package:mediate/widgets/recently_played.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
    
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
           
            const RecentlyPlayed(),
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
                        ),
                      ),
                    ],
                  ),
                ),
            const FavouritesContainer(),
            Container(
              height: 400,
            ),
            Container(
              height: 400,
            ),
            
          ],
        ),
      ),
    );
  }
}





import 'package:flutter/material.dart';
import 'package:mediate/data/data_private.dart';
import 'package:mediate/widgets/image_header.dart';
import 'package:mediate/widgets/mood_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            ImageHeader(),
            MoodBar(),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Recently Played',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(shrinkWrap: true,
          scrollDirection: Axis.horizontal,
            itemCount: audios.length,
            
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: const Text(
                        'Hello',
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                          image: AssetImage('${audios[index].coverImage}'),

                        ),borderRadius:BorderRadius.circular(13.0)
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    ));
  }
}

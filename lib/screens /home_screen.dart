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
                      height: 180,
                      width: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text('${audios[index].name}'),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                          image: AssetImage('${audios[index].coverImage}'),

                        ),
                        borderRadius: BorderRadius.circular(13.0),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: const [
                                0.1,
                                0.4,
                                0.6,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(0.3),
                                Colors.black87.withOpacity(0.3),
                                Colors.black54.withOpacity(0.3),
                                Colors.black38.withOpacity(0.3)
                              ])
                      
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



import 'package:flutter/material.dart';
import 'package:mediate/data/data_private.dart';

class PlayListScreen extends StatelessWidget {
  const PlayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage(
                              '$nature.audioCatList[1].coverImage'))),
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
                            audio1Nature.name,
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
                      const Text(
                        'Daily Calm',
                        style: TextStyle(
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
                              onPressed: () {},
                              icon: const Icon(
                                Icons.play_arrow,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Text(
                              '00:0${audio1Nature.length}:00',
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
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'The Meditation list is largely focused on accepting what is happening to your mindset and developing a awareness that  helps us to let go off negative emotions',
                    style: TextStyle(color: Colors.white),
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
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 00, 10.0, 00),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                audiosNature[index]
                                                    .coverImage))),
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(width: 30),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                  audiosNature[index].name,
                                    style: const TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                  ),
                                Text(
                                  audiosNature[index].category,
                                  style: const TextStyle(color: Colors.white),
                                )
                                ],
                              ),
                            
                            Padding(
                              padding: const EdgeInsets.only(left:115.0),
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

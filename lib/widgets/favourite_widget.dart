import 'package:flutter/material.dart';
import 'package:mediate/data/data_private.dart';

class FavouritesContainer extends StatelessWidget {
  const FavouritesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: audios.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'PlayListScreen');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff283a75),
                    borderRadius: BorderRadius.circular(20.0)),
                height: 130,
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
                          child: Container(
                            height: 110,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('${audios[index].coverImage}'),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Train your Mind',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Container(
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
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                                const SizedBox(
                                  width: 12.0,
                                ),
                                Text(
                                  '${audios[index].length} mins',
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



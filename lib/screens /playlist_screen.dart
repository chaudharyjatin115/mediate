import 'package:flutter/material.dart';
import 'package:mediate/data/data_private.dart';

class PlayListScreen extends StatelessWidget {
  const PlayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image(
                  height: 230,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage('${audio1.coverImage}'),
                ),
                const SizedBox(
                  height: 40,
                ),
                Positioned(
                  bottom: 1500,
                  top: 454750,
                  left: 13,
                  child: Container(
                    height: 20,
                    width: 80,
                    child: Center(
                        child: Text(
                      '${audio1.name}',
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
            )
          ],
        ),
      ),
    );
  }
}

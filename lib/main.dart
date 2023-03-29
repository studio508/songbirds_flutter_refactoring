import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SongbirdsApp());

class SongbirdsApp extends StatelessWidget {
  const SongbirdsApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$soundNumber.wav'));
  }

  circleKey({required String birdName, required int soundNumber}) {
    return TextButton(
      onPressed: () {
        playSound(soundNumber);
      },
      child: CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage('images/$birdName.png'),
      ),
    );
  }
// circleKey(soundNumber: 1, birdName: '까치'),

  Text textKey({required String birdName}) {
    return Text(
      birdName,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontFamily: 'GolosText',
      ),
    );
  }
// textKey(birdName: '까치'),

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Song Birds',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      circleKey(soundNumber: 1, birdName: '까치'),
                      textKey(birdName: '까치'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      circleKey(soundNumber: 2, birdName: '꿩'),
                      textKey(birdName: '꿩'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      circleKey(soundNumber: 3, birdName: '백조'),
                      textKey(birdName: '백조'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      circleKey(soundNumber: 4, birdName: '뻐꾸기'),
                      textKey(birdName: '뻐꾸기'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      circleKey(soundNumber: 5, birdName: '종달새'),
                      textKey(birdName: '종달새'),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      circleKey(soundNumber: 6, birdName: '참새'),
                      textKey(birdName: '참새'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

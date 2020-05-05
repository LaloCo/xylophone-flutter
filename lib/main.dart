import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int keyNumber) {
    final player = AudioCache();
    // audioplayers package already assumes that the audio files
    // are inside an assets folder
    player.play('note$keyNumber.wav');
  }

  Widget buildKey({Color color, int keyNumber}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        minWidth: 200.0,
        height: 50.0,
        onPressed: () {
          playSound(keyNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, keyNumber: 1),
              buildKey(color: Colors.deepPurple, keyNumber: 2),
              buildKey(color: Colors.lightBlue, keyNumber: 3),
              buildKey(color: Colors.green, keyNumber: 4),
              buildKey(color: Colors.yellow, keyNumber: 5),
              buildKey(color: Colors.deepOrange, keyNumber: 6),
              buildKey(color: Colors.blueGrey, keyNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

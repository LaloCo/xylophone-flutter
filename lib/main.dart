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

  Widget buildKey(Color color, int keyNumber) {
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
              buildKey(Colors.red, 1),
              buildKey(Colors.deepPurple, 2),
              buildKey(Colors.lightBlue, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.deepOrange, 6),
              buildKey(Colors.blueGrey, 7),
            ],
          ),
        ),
      ),
    );
  }
}

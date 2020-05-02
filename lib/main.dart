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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              MaterialButton(
                color: Colors.red,
                minWidth: 200.0,
                height: 50.0,
                onPressed: () {
                  playSound(1);
                },
              ),
              MaterialButton(
                color: Colors.deepPurple,
                minWidth: 200.0,
                height: 50.0,
                onPressed: () {
                  playSound(2);
                },
              ),
              MaterialButton(
                color: Colors.lightBlue,
                minWidth: 200.0,
                height: 50.0,
                onPressed: () {
                  playSound(3);
                },
              ),
              MaterialButton(
                color: Colors.green,
                minWidth: 200.0,
                height: 50.0,
                onPressed: () {
                  playSound(4);
                },
              ),
              MaterialButton(
                color: Colors.yellow,
                minWidth: 200.0,
                height: 50.0,
                onPressed: () {
                  playSound(5);
                },
              ),
              MaterialButton(
                color: Colors.deepOrange,
                minWidth: 200.0,
                height: 50.0,
                onPressed: () {
                  playSound(6);
                },
              ),
              MaterialButton(
                color: Colors.blueGrey,
                minWidth: 200.0,
                height: 50.0,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

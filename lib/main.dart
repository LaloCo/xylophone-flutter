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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  color: Colors.red,
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.deepPurple,
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.lightBlue,
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.green,
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.yellow,
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.deepOrange,
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.blueGrey,
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

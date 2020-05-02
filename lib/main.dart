import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              child: Text('Play'),
              onPressed: () {
                final player = AudioCache();
                // audioplayers package already assumes that the audio files
                // are inside an assets folder
                player.play('note1.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}

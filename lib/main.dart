import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  static AudioCache player = AudioCache();

  playSound(String url) {
    player.play(url);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.volume_up,
                color: Colors.pink,
              ),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                playSound('note1.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}

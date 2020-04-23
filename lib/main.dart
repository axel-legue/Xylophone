import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  static AudioCache player = AudioCache();

  void playSound(int sound) {
    player.play('note$sound.wav');
  }

  Expanded createSoundButton({int soundNumber, Color color}) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                createSoundButton(soundNumber: 1, color: Colors.red),
                createSoundButton(soundNumber: 2, color: Colors.orange),
                createSoundButton(soundNumber: 3, color: Colors.yellow),
                createSoundButton(soundNumber: 4, color: Colors.green),
                createSoundButton(soundNumber: 5, color: Colors.teal),
                createSoundButton(soundNumber: 6, color: Colors.blue),
                createSoundButton(soundNumber: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

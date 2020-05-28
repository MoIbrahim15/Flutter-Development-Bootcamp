import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

void playSound(int soundID) {
  final player = AudioCache();
  player.play('note$soundID.wav');
}

Expanded buildKey({int soundID, Color color}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundID);
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(soundID: 1, color: Colors.red),
            buildKey(soundID: 2, color: Colors.orange),
            buildKey(soundID: 3, color: Colors.yellow),
            buildKey(soundID: 4, color: Colors.green),
            buildKey(soundID: 5, color: Colors.teal),
            buildKey(soundID: 6, color: Colors.blue),
            buildKey(soundID: 7, color: Colors.purple)
          ],
        ),
      ),
    ));
  }
}

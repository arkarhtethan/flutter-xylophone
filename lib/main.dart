import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colorName, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: colorName,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(colorName:Colors.red,soundNumber:1),
                buildKey(colorName:Colors.orange,soundNumber:2),
                buildKey(colorName:Colors.yellow,soundNumber:3),
                buildKey(colorName:Colors.green,soundNumber:4),
                buildKey(colorName:Colors.teal,soundNumber:5),
                buildKey(colorName:Colors.blue,soundNumber:6),
                buildKey(colorName:Colors.purple,soundNumber:7),
              
              ]),
        ),
      ),
    );
  }
}

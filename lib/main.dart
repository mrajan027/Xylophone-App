import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final player = AudioPlayer();
      player.play(AssetSource('note$soundNumber.wav'));
    }

    Expanded Buildkey(int sound, Color color) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () {
            playSound(sound);
          },
          child: Text(" "),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Buildkey(1, Colors.red),
              Buildkey(2, Colors.orange),
              Buildkey(3, Colors.yellow),
              Buildkey(4, Colors.green),
              Buildkey(5, Colors.blue),
              Buildkey(6, Colors.indigo),
              Buildkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

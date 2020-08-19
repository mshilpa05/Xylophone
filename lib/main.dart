import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Xylophone(),
          ),
        ),
      ),
    );

// Method that plays audio in asset folder
final player = AudioCache();
void playAudio(int audioNumber) {
  player.play('note$audioNumber.wav');
}

//Method that creates keys

Widget createKey(audioNumber, color) {
  return Expanded(
    child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(audioNumber);
        },
        child: Container()),
  );
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        createKey(1, Colors.red),
        createKey(2, Colors.orange),
        createKey(3, Colors.yellow),
        createKey(4, Colors.green),
        createKey(5, Colors.blue),
        createKey(6, Colors.purple),
      ],
    );
  }
}

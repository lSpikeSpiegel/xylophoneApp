import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void palySound(int num) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$num.wav'));
  }

  Expanded buildBtn({Color color, int idx}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            palySound(idx);
          },
          color: color),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildBtn(color: Colors.red, idx: 1),
              buildBtn(color: Colors.orange, idx: 2),
              buildBtn(color: Colors.yellow, idx: 3),
              buildBtn(color: Colors.green, idx: 4),
              buildBtn(color: Colors.teal, idx: 5),
              buildBtn(color: Colors.blue, idx: 6),
              buildBtn(color: Colors.purple, idx: 7),
            ],
          ),
        ),
      ),
    );
  }
}

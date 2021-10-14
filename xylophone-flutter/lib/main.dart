import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidget(
                button: 'note1.wav',
                color: Colors.red,
              ),
              ButtonWidget(
                button: 'note2.wav',
                color: Colors.orange,
              ),
              ButtonWidget(
                button: 'note3.wav',
                color: Colors.yellow,
              ),
              ButtonWidget(
                button: 'note4.wav',
                color: Colors.green,
              ),
              ButtonWidget(
                button: 'note5.wav',
                color: Colors.green[900],
              ),
              ButtonWidget(
                button: 'note6.wav',
                color: Colors.blue,
              ),
              ButtonWidget(
                button: 'note7.wav',
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String button;
  final Color color;

  const ButtonWidget({this.button, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play(button);
        },
      ),
    );
  }
}

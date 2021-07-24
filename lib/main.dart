import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  void playSound(int note) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$note.wav"),
    );
  }

  Expanded buildExpanded({required int sound, required Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          playSound(sound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildExpanded(sound: 1, color: Colors.red),
              buildExpanded(sound: 2, color: Colors.orange),
              buildExpanded(sound: 3, color: Colors.yellow),
              buildExpanded(sound: 4, color: Colors.green),
              buildExpanded(sound: 5, color: Colors.teal),
              buildExpanded(sound: 6, color: Colors.blue),
              buildExpanded(sound: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

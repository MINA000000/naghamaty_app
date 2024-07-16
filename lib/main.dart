import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWedget());
}

class MusicWedget extends StatelessWidget {
  const MusicWedget({super.key});
  Expanded myButton(Color ButtonColor,int MusicNumber) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(child: Icon(Icons.music_note,color: ButtonColor,),color: Colors.white,),flex: 1,),
          Expanded(
            flex: 5,
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.audioCache = AudioCache(prefix: 'assets/');
                player.play(AssetSource('music-$MusicNumber.mp3'));
              },
              child: Text('Music $MusicNumber'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: ButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // Set the radius here
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: Text('نغمات'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          myButton(Colors.red,1),
          SizedBox(height: 1.0,),
          myButton(Colors.blue,2),
          SizedBox(height: 1.0,),
          myButton(Colors.black,3),
          SizedBox(height: 1.0,),
          myButton(Colors.green,4),
          SizedBox(height: 1.0,),
          myButton(Colors.purple,5),
          SizedBox(height: 1.0,),
          myButton(Colors.brown,6),
          SizedBox(height: 1.0,),
          myButton(Colors.lightGreenAccent,7)
        ]),
      ),
    );
  }
}

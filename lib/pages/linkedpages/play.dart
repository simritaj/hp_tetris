import 'package:flutter/material.dart';
import 'package:hp_tetris/tetris/game_main.dart';


class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      FlatButton.icon(
                color: Color.fromARGB(255, 81, 129, 212),
                icon: Icon(Icons.people),
                label: Text('Play Tetris!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tetris()),
                  );
                },
              )
      
    );
  }
}

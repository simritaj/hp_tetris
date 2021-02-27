import 'package:flutter/material.dart';
import 'package:hp_tetris/elements/grid.dart';
import 'package:hp_tetris/elements/my_drawer.dart';

class UserBoard extends StatefulWidget {
  @override
  _UserBoardState createState() => _UserBoardState();
}

class _UserBoardState extends State<UserBoard> {
  int points = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('My Board'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent[700],
      ),
      body: Container(
        color: Colors.red,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                child: Text(
                  'You have $points points',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Grid(),
            Draggable(
              data: 1,
              child: Container(
                color: Colors.blue,
                height: 50.0,
                width: 50.0,
              ),
              feedback: Container(
                color: Colors.blue,
                height: 50.0,
                width: 50.0,
              ),
              childWhenDragging: Container(
                color: Colors.grey,
                height: 50.0,
                width: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

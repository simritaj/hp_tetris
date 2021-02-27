import 'package:flutter/material.dart';
import 'package:hp_tetris/elements/grid_square.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Table(
        children: [
          TableRow(children: [
            GridSquare(),
            GridSquare(),
          ]),
          TableRow(children: [
            GridSquare(),
            GridSquare(),
          ])
        ],
      ),
    );
  }
}

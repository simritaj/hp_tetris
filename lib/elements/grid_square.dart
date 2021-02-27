import 'package:flutter/material.dart';

class GridSquare extends StatefulWidget {
  @override
  _GridSquareState createState() => _GridSquareState();
}

class _GridSquareState extends State<GridSquare> {
  bool isOccupied = false;
  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<int> candidateData, rejectedData) {
        if (isOccupied) {
          return AspectRatio(
            aspectRatio: 1,
            child: Card(
              color: Colors.blue,
              child: Text('$isOccupied'),
            ),
          );
        } else {
          return AspectRatio(
            aspectRatio: 1,
            child: Card(
              child: Text('$isOccupied'),
            ),
          );
        }
      },
      onWillAccept: (data) {
        if (isOccupied) {
          return false;
        }
        return true;
      },
      onAccept: (data) {
        setState(() {
          isOccupied = true;
        });
      },
    );
  }
}

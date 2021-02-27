import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/linkedpages/upload.dart';
import 'package:hp_tetris/tetris/game_main.dart';

class GetBlocks extends StatefulWidget {
  @override
  _GetBlocksState createState() => _GetBlocksState();
}

class _GetBlocksState extends State<GetBlocks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 120, 157, 219),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 157, 219),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50,30),
              child: Text('Get Blocks and Keep Playing!', style: TextStyle(fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 243, 243, 243),
              fontSize: 30)),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 80,
              width: 200,
              child: RaisedButton(
                color: Color.fromARGB(255, 251, 187, 45),
                child: Text('New Products', style: TextStyle(color: Colors.white, fontSize: 20),),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tetris()),
                    );
                  },),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 80,
              width: 200,
              child: RaisedButton(
                color: Color.fromARGB(255, 251, 187, 45),
                child: Text('Returned Products', style: TextStyle(color: Colors.white, fontSize: 20),),
                onPressed: () {
                  },),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 80,
              width: 200,
              child: RaisedButton(
                color: Color.fromARGB(255, 251, 187, 45),
                child: Text('Recycled/Planted Products', style: TextStyle(color: Colors.white, fontSize: 20),),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Upload()),
                    );
                  },),
            ),
          ]
        ),
      )
      
    );
  }
}
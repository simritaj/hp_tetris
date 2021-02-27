import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';

class Verified extends StatefulWidget {
  @override
  _VerifiedState createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        appBar: AppBar(
          //title: Text('Home: Packtris'),
          backgroundColor: Color.fromARGB(255, 81, 129, 212),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.home),
              label: Text('Home'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ],
        ),
       body: Column(children: [
         
       ],)  
      ),
      
    );
  }
}
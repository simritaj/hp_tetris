import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/linkedpages/leaderboard.dart';
import 'package:hp_tetris/pages/linkedpages/rewards.dart';
import 'package:hp_tetris/pages/linkedpages/share.dart';
import 'package:hp_tetris/pages/linkedpages/upload.dart';
import 'package:hp_tetris/services/auth.dart';
import 'package:hp_tetris/elements/my_drawer.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

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
              icon: Icon(Icons.logout, color: Color.fromARGB(255, 243, 243, 243)),
              label: Text('Logout', style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: Container(
          
    width:400,
    child: 
      Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color.fromARGB(255, 81, 129, 212),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height:70),
                Text('Hello Simrita!', style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 243, 243, 243), fontWeight: FontWeight.bold)),
                  //subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
                SizedBox(height:30),
                ButtonTheme.bar(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                    color: Color.fromARGB(255, 251, 187, 45),
                    icon: Icon(Icons.eco, color: Colors.black,),
                    label: Text('HP Sustainability', style: TextStyle(color: Colors.black)),
                    onPressed: () async {},
                  ),
                       FlatButton.icon(
                    color: Color.fromARGB(255, 251, 187, 45),
                    icon: Icon(Icons.share, color: Colors.black,),
                    label: Text('Share', style: TextStyle(color: Colors.black),),
                    onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Share()),
            );},
                  ),
                    ],
                  ),
                ),
                SizedBox(height:30),
              ],
            ),
          ),
          SizedBox(height:40),
          SizedBox(
            height: 60,
            width: 200,
            child: RaisedButton(
              color: Color.fromARGB(255, 120, 157, 219),
              child: Text('Play'),
              onPressed: (){Navigator.pushNamed(context, '/GameScreen')}),
          ),
          SizedBox(height:10),
          SizedBox(
            height: 60,
            width: 200,
            child: RaisedButton(
              color: Color.fromARGB(255, 120, 157, 219),
              child: Text('Rewards'),
              onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Rewards()),
            );}),
          ),
          SizedBox(height:10),
          SizedBox(
            height: 60,
            width: 200,
            child: RaisedButton(
              color: Color.fromARGB(255, 120, 157, 219),
              child: Text('LeaderBoard'),
              onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LeaderBoard()),
            );}),
          ),
          SizedBox(height:10),
          SizedBox(
            height: 60,
            width: 200,
            child: RaisedButton(
              color: Color.fromARGB(255, 120, 157, 219),
              child: Text('OCR'),
              onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Upload()),
            );}),
          ),
        ],
      ),
    
  ),
      ),
    );
  }
}

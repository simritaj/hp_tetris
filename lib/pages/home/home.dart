import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/rewards.dart';
import 'package:hp_tetris/services/auth.dart';
import 'package:hp_tetris/elements/my_drawer.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          //title: Text('Home: Packtris'),
          backgroundColor: Colors.blueAccent[100],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.logout, color: Colors.amber[50]),
              label: Text('Logout', style: TextStyle(color: Colors.amber[50]),),
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
            color: Colors.blueAccent[100],
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height:70),
                Text('Hello Simrita!', style: TextStyle(fontSize: 40, color: Colors.amber[50], fontWeight: FontWeight.bold)),
                  //subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
                SizedBox(height:30),
                ButtonTheme.bar(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                    color: Colors.blue[200],
                    icon: Icon(Icons.eco),
                    label: Text('HP Sustainability', style: TextStyle(color: Colors.amber[50])),
                    onPressed: () async {},
                  ),
                       FlatButton.icon(
                    color: Colors.pink[300],
                    icon: Icon(Icons.share),
                    label: Text('Share', style: TextStyle(color: Colors.amber[50]),),
                    onPressed: () async {},
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
              child: Text('Play'),
              onPressed: null),
          ),
          SizedBox(height:10),
          SizedBox(
            height: 60,
            width: 200,
            child: RaisedButton(
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
              child: Text('LeaderBoard'),
              onPressed: null),
          ),
        ],
      ),
    
  ),
      ),
    );
  }
}

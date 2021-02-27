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
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Home: Packtris'),
          backgroundColor: Colors.brown[100],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.logout),
              label: Text('Logout'),
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
            color: Colors.pink[200],
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height:20),
                Text('Hello Simrita!', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
                  //subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
                SizedBox(height:10),
                ButtonTheme.bar(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                    color: Colors.green,
                    icon: Icon(Icons.eco),
                    label: Text('HP Sustainability'),
                    onPressed: () async {},
                  ),
                       FlatButton.icon(
                    color: Colors.green,
                    icon: Icon(Icons.share),
                    label: Text('Share'),
                    onPressed: () async {},
                  ),
                    ],
                  ),
                ),
                SizedBox(height:10),
              ],
            ),
          ),
          SizedBox(height:10),
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

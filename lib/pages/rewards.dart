import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {


  _launchURL() async {
  const url = 'https://store.hp.com/sg-en/default/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
  }
  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('Your Rewards!'),
        backgroundColor: Colors.brown[100],
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
      body: Container(
          child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.blue,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height:20),
                Text('You have 231 points available',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(height:10),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      
                      FlatButton.icon(
                        color: Colors.white,
            icon: Icon(Icons.shopping_cart),
            label: Text('HP Website'),
            onPressed: _launchURL
                ,
          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height:10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.pink,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.euro, size: 70),
                  title: Text('GET \$5 OFF YOUR NEXT PURCHASE',
                      style: TextStyle(color: Colors.white)),

                  subtitle:
                      Text('worth 100 points', style: TextStyle(color: Colors.white)),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.white,
                        child: const Text('Redeemed',
                            style: TextStyle(color: Colors.black)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.pink,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.euro, size: 70),
                  title: Text('GET \$10 OFF ON YOUR NEXT PURCHASE',
                      style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('worth 225 points', style: TextStyle(color: Colors.white)),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.green,
                        child: const Text('Redeem',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.pink,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.mouse, size: 70),
                  title: Text('GET A FREE MOUSE ON YOUR NEXT PURCHASE',
                      style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('worth 500 points', style: TextStyle(color: Colors.white)),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.grey,
                        child: const Text('Need more points',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

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
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        //title: Text('Your Rewards!'),
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
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
            color: Color.fromARGB(255, 81, 129, 212),
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
                        color: Color.fromARGB(255, 251, 187, 45),
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: Text('HP Website', style: TextStyle(color: Colors.black),),
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
              side: new BorderSide(color: Color.fromARGB(255, 81, 129, 212)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color.fromARGB(255, 243, 243, 243),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  leading: Icon(Icons.euro, size: 70),
                  title: Text('GET \$5 OFF YOUR NEXT PURCHASE',
                      style: TextStyle(color: Colors.black)),

                  subtitle:
                      Text('worth 100 points', style: TextStyle(color: Colors.grey)
                      ),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        color: Color.fromARGB(255, 120, 157, 219),
                        child: const Text('Redeemed',
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
              side: new BorderSide(color: Color.fromARGB(255, 81, 129, 212)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color.fromARGB(255, 243, 243, 243),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  leading: Icon(Icons.euro, size: 70),
                  title: Text('GET \$10 OFF ON YOUR NEXT PURCHASE',
                      style: TextStyle(color: Colors.black)),
                  subtitle:
                      Text('worth 225 points', style: TextStyle(color: Colors.grey)),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        color: Color.fromARGB(255, 251, 187, 45),
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
              side: new BorderSide(color: Color.fromARGB(255, 81, 129, 212)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color.fromARGB(255, 243, 243, 243),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  leading: Icon(Icons.mouse, size: 70),
                  title: Text('GET A FREE MOUSE ON YOUR NEXT PURCHASE',
                      style: TextStyle(color: Colors.black)),
                  subtitle:
                      Text('worth 500 points', style: TextStyle(color: Colors.grey)),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        color: Color.fromARGB(255, 37, 46, 68),
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

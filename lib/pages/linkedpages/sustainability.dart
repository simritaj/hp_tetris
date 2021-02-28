import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';

class Sustainability extends StatefulWidget {
  @override
  _SustainabilityState createState() => _SustainabilityState();
}

class _SustainabilityState extends State<Sustainability> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: AssetImage('assets/hp_logo.png'),
                fit: BoxFit.fitHeight),
          ),
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'assets/ob1.png',
                  height: 600,
                  width: 500,
                ),
              ),
              
              
            ],
          ),
        ));
  }
}

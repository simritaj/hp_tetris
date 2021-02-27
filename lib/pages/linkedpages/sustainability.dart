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
                  height: 300,
                  width: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('All our packaging is made out of Seed Paper. Plant the packaging material after use to see your plant grow! \n Learn more about how to plant the seed paper from below - ',
                style: TextStyle(fontSize: 20)),
              ),
              SizedBox(
                height: 150,
                child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            'assets/seedpaper.jpg',
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(2),
        ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/authenticate/onboarding2.dart';
import 'package:hp_tetris/pages/home/home.dart';

class OnBoarding1 extends StatefulWidget {
  @override
  _OnBoarding1State createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
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
                  height: 500,
                  width: 300,
                ),
              ),
              SizedBox(height: 30),
              FloatingActionButton(
                child: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnBoarding2()),
                  );
                },
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/authenticate/authenticate.dart';
import 'package:hp_tetris/pages/authenticate/sign_in.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:hp_tetris/pages/wrapper.dart';



class OnBoarding2 extends StatefulWidget {
  @override
  _OnBoarding2State createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
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
                  'assets/ob2.png',
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
                    MaterialPageRoute(builder: (context) => Wrapper()),
                  );
                },
              )
            ],
          ),
        ));
  }
}


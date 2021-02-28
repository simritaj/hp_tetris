import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:hp_tetris/tetris/game_main.dart';

class Returned extends StatefulWidget {
  @override
  _ReturnedState createState() => _ReturnedState();
}

class _ReturnedState extends State<Returned> {
  @override
  
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 120, 157, 219),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 120, 157, 219),
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
         crossAxisAlignment: CrossAxisAlignment.center,
         
      children: [
        SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
          child: Text('You have won a new block!', textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.bold)),
        ),
       SizedBox(height: 30),
       
      Image.asset('assets/s.png', width: 150,height: 150,),
       SizedBox(height: 30),
       SizedBox(
         height: 50,
         width: 300,
         child: RaisedButton(
           color: Color.fromARGB(255, 37, 46, 68),
           onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tetris(seed: 6,)),
                    );
                  }, 
           child: Text('Play New Level!', style: TextStyle(fontSize: 20,
           color: Color.fromARGB(255, 243, 243, 243)))),
       ),
       /*
       SizedBox(
         height: 50,
         width: 300,
         child: RaisedButton(
           color: Color.fromARGB(255, 37, 46, 68),
           onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }, 
           child: Text('Home', style: TextStyle(fontSize: 20,
           ))),
       ),
       */
        
       ],)  
      )),
      
    );
  }
}
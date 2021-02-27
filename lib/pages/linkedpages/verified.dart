import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';


class Verified extends StatefulWidget {
  @override
  _VerifiedState createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 187, 45),
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

       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         
      children: [
        SizedBox(height:20),
        Text('You have won 3 blocks!', style: TextStyle(color: Color.fromARGB(255, 243, 243, 243), fontWeight: FontWeight.bold)),
       SizedBox(height: 30),
       //Image.asset('assets/board.png', height: 450,width: 600,),
       SizedBox(height: 30),
       SizedBox(
         height: 50,
         width: 300,
         child: RaisedButton(
           color: Color.fromARGB(255, 37, 46, 68),
           onPressed: null, 
           child: Text('Play', style: TextStyle(fontSize: 20,
           color: Color.fromARGB(255, 243, 243, 243)))),
       ),
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
        
       ],)  
      )),
      
    );
  }
}
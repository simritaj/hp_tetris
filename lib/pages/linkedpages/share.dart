import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';

class Share extends StatefulWidget {
  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 120, 157, 219),
        appBar: AppBar(
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
       body: 
       Column(
         
      children: [
       SizedBox(height: 30),
       Image.asset('assets/share.png', height: 450,width: 600,),
       SizedBox(height: 30),
       SizedBox(
         height: 50,
         width: 300,
         child: RaisedButton(
           color: Color.fromARGB(255, 251, 187, 45),
           onPressed: null, 
           child: Text('Share on Instagram!', style: TextStyle(fontSize: 20,
           color: Color.fromARGB(255, 243, 243, 243)))),
       ),
       SizedBox(height: 20,),
       SizedBox(
         height: 50,
         width: 300,
         child: RaisedButton(
           color: Color.fromARGB(255, 251, 187, 45),
           onPressed: null, 
           child: Text('Share on Facebook!', style: TextStyle(fontSize: 20,
           color: Color.fromARGB(255, 243, 243, 243)))),
       ),
        
       ],)  
      ),
      
    );
  }
}
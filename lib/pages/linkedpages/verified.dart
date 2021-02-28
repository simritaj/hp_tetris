import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:hp_tetris/tetris/game_main.dart';


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
          backgroundColor: Color.fromARGB(255, 251, 187, 45),
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
          child: Text('You have won a new block!', textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.black, fontWeight: FontWeight.bold)),
        ),
       SizedBox(height: 30),
       /*
       Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            'assets/z.png',
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(2),
        ),
      */
      Image.asset('assets/z.png', width: 150,height: 150,),
       SizedBox(height: 30),
       SizedBox(
         height: 50,
         width: 300,
         child: RaisedButton(
           color: Color.fromARGB(255, 37, 46, 68),
           onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tetris(seed: 7,)),
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
import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/linkedpages/returned.dart';
import 'package:hp_tetris/services/auth.dart';
import 'package:hp_tetris/shared/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ReturnProduct extends StatefulWidget {
  @override
  _ReturnProductState createState() => _ReturnProductState();
}

class _ReturnProductState extends State<ReturnProduct> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String otp= '';

  _launchURL() async {
  const url = 'https://support.hp.com/sg-en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 120, 157, 219),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 157, 219),
        elevation: 0.0,
        //title: Text('Sign in to Brew Crew' ,style: TextStyle(color: Colors.indigo[900]),),
      ),
      body: Container(
        
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter Your OTP',
                style: TextStyle(color: Colors.white, fontSize: 34.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Enter OTP'),
                validator: (val) => val.isEmpty ? 'Enter an otp' : null,
                onChanged: (val) {
                  setState(() => otp = val);
                },
              ),
              
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(80,0,0,0),
                child: RaisedButton(
                  color: Color.fromARGB(255, 251, 187, 45),
                  child: Text(
                    'GO',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Returned()),
                    );
                  }, 
                ),
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                backgroundColor: Colors.grey,
                child: Icon(Icons.info),
                onPressed: _launchURL)
              
            ],
          ),
        )
      ));
    
  }
  
}

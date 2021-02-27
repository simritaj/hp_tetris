import 'package:hp_tetris/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:hp_tetris/shared/constants.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        elevation: 0.0,
        //title: Text('Sign up to Brew Crew'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: AssetImage('assets/hp_logo.png'),
            fit: BoxFit.fitHeight),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Register',
                style: TextStyle(color: Color.fromARGB(255, 37, 46, 68), fontSize: 34.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'HP Account Email'),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                obscureText: true,
                validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(80,0,0,0),
                child: RaisedButton(
                  color: Color.fromARGB(255, 251, 187, 45),
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if(_formKey.currentState.validate()){
                      dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                      if(result == null) {
                        setState(() {
                          error = 'Please supply a valid email';
                        });
                      }
                    }
                  }
                ),
              ),
              //SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              //SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(40,0,0,0),
                child: Text(
                  'Already have an HP Account?',
                  style: TextStyle(color: Colors.black, fontSize: 14.0),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(80,0,0,0),
                child: RaisedButton(
                  color: Color.fromARGB(255, 120, 157, 219),
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => widget.toggleView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
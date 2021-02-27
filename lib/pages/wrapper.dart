import 'package:hp_tetris/pages/authenticate/onboarding1.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:hp_tetris/pages/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hp_tetris/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<TUser>(context);
    print(user);
    
    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return Home();
    }
    
  }
}
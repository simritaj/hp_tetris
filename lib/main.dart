import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:hp_tetris/pages/loading.dart';
import 'package:hp_tetris/pages/login.dart';
import 'package:hp_tetris/pages/user_board.dart';
import 'package:hp_tetris/pages/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}

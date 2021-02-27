import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:hp_tetris/pages/loading.dart';
import 'package:hp_tetris/pages/login.dart';
import 'package:hp_tetris/pages/user_board.dart';
import 'package:hp_tetris/pages/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:hp_tetris/services/auth.dart';
import 'package:hp_tetris/models/user.dart';

//void main() => runApp(MyApp());

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<TUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

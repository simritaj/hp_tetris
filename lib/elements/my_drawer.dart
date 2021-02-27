import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.lightBlueAccent[700],
            child: DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.grid_on),
            title: Text('My Board'),
            onTap: () {
              Navigator.pushNamed(context, '/userboard');
            },
          ),
        ],
      ),
    );
  }
}

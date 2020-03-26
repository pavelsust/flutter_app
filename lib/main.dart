import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapp/app/screen/FirstScreen.dart';


void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Toolbar'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: FirstScreen(),
      ),
    );

    return materialApp;
  }
}

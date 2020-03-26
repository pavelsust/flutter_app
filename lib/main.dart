import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:'My App',
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('My Toolbar')
      ),
      body: Material(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text('Hello world' ,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white ,
          fontSize: 20)
          )
        ),
      ),
    ),
  ));
}
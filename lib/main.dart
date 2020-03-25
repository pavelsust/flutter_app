import 'package:flutter/material.dart';

void main(){
  runApp(

    MaterialApp(
      title: 'First App',
      home: Material(
        color: Colors.lightBlueAccent,
        child: Center(
          child: (
          Text('hello world',
          textDirection: TextDirection.ltr)
          ),
        ),
      ),
    )
  );
}
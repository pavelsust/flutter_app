
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    var material = Material(
      color: Colors.amber,
      child: Center(
        child: Text(
          'My Lucky number is ${generateALuckyNumber()}',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
    return material;
  }

  int generateALuckyNumber(){
    var randomNumber = Random();
    var number = randomNumber.nextInt(10);
    return number;
  }

}
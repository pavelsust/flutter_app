
import 'package:flutter/material.dart';

class StackedIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.green),
          child: Icon(Icons.local_offer, color: Colors.white),
        ),
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(right: 50, top: 50),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.red),
          child: Icon(Icons.local_offer, color: Colors.white),
        ),
      ],
    );
  }
  
}
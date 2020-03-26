import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myContainer = Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        width: 200,
        height: 100,
        child: Text('Hello Material',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 20 , fontFamily: 'Roboto' ,
            fon: FontWeight.w700)),
      ),
    );
    return myContainer;
  }
}

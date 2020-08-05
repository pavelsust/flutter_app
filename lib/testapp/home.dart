
import 'package:flutter/material.dart';

void main() => runApp(QuickBee());

class QuickBee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Bee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getStackImage()
          ],
        )
      ),
    );
  }

  Widget getStackImage(){
    return Stack(
      children: <Widget>[
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.green
          ),
        ),

        Container(

        )
      ],
    );
  }
}
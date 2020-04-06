

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyTest();
  }

}


class _MyTest extends State<MyTest>{

  var myTestName;

  @override
  Widget build(BuildContext context) {

    var mycontainer = Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            onSubmitted: (String input){
              setState(() {
                myTestName = input;
              });
            },
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'your favourite city is $myTestName',
              style: TextStyle(
                  fontSize: 14
              ),
            ),
          )

        ],
      ),
    );

    return mycontainer;
  }

}
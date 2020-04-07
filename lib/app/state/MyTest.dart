import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyTest();
  }
}

class _MyTest extends State<MyTest> {
  var initialValue = '';
  var currentValueDropDown = 'Taka';
  var dropDownItemList = ['Ruppees' , 'Taka' , 'Doller' , 'Others'];

  @override
  Widget build(BuildContext context) {
    var container = Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: <Widget>[
          TextField(
              decoration: InputDecoration(
                hintText: 'Write here',
              ),
              onSubmitted: (String input) {
                setState(() {
                  initialValue = input;
                  debugPrint('$initialValue');
                });
              }),

          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'You write $initialValue'
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: DropdownButton<String>(
              value: currentValueDropDown,
              items: dropDownItemList.map((String item){
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String value){
                setState(() {
                  this.currentValueDropDown = value;
                });
              },
            ),
          )
        ],
      ),
    );
    return container;
  }
}

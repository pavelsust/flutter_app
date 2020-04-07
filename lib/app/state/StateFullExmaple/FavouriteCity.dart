import 'package:flutter/material.dart';

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCity();
  }
}

class _FavouriteCity extends State<FavouriteCity> {
  var nameOfTheCity = '';
  var _currency = ['Rupees' , 'Dollar' , 'Pounds' , 'Others'];
  var _currentItemSelected = 'Rupees';

  void changeText(var value){
    setState(() {
      nameOfTheCity = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('debug mood from build');
    var myContainer = Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            onSubmitted: (String input) {
              setState(() {
                nameOfTheCity = input;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'your favourite city is $nameOfTheCity',
              style: TextStyle(fontSize: 14),
            ),
          ),
          DropdownButton<String>(
            value: _currentItemSelected,
            items: _currency.map((String item){
              return DropdownMenuItem<String>(
                child: Text(item),
                value: item,
              );
            }).toList(),
            onChanged: (String newValue){
              setState(() {
                this._currentItemSelected = newValue;
              });
            },
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlue,
              onPressed: () {
                changeText(nameOfTheCity);
              },
            ),
          )
        ],
      ),
    );
    return myContainer;
  }
}
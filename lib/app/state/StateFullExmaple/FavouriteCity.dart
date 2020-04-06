import 'package:flutter/material.dart';

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCity();
  }
}

class _FavouriteCity extends State<FavouriteCity> {
  var nameOfTheCity = '';
  
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
          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlue,
              onPressed: () {
                changeText(nameOfTheCity)
              },
            ),
          )
        ],
      ),
    );
    return myContainer;
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Error Showed if Field is Empty on Submit button Pressed'),
            TextField(
              controller: _text,
              decoration: InputDecoration(
                labelText: 'Enter the Value',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _text.text.isEmpty ? _validate = true : _validate = false;
                });
              },
              child: Text('Submit'),
              textColor: Colors.white,
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyCalculator();
  }
}

class _MyCalculator extends State<MyCalculator> {
  var _currencies = ['Rupees', 'Dollars', 'Pounds', 'Others'];
  var dropDownInitialValue = 'Rupees';
  final _minimumPadding = 5;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var myContainer = Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          getImage(),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Principle',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: 'Enter Principal e.g 12000'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Rate of Interest',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: 'In percent'),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Rate of Interest',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'In percent'),
                  ),
                ),
              ),
              Container(width: 5),
              Expanded(
                child: DropdownButton<String>(
                  items: _currencies.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: dropDownInitialValue,
                  onChanged: (String newValue) {
                    setState(() {
                      this.dropDownInitialValue = newValue;
                    });
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text('Calculate'),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text('Reset'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Todo Text'),
          )
        ],
      ),
    );
    return myContainer;
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/image_2.png');
    Image image = Image(image: assetImage);
    return Container(child: image, margin: EdgeInsets.all(10));
  }
}

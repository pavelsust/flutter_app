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
  var dropDownInitialValue = '';
  TextEditingController principleController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController termController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var displayResult = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropDownInitialValue = _currencies[0];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var textStyle = Theme.of(context).textTheme.title;

    var myContainer = Form(
      //margin: EdgeInsets.all(10),
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            getImage(),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                controller: principleController,
                keyboardType: TextInputType.number,
                // ignore: missing_return
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Please enter principle amount";
                  }
                },
                style: TextStyle(
                    fontSize: 13,
                    color: Theme.of(context).textTheme.title.color),
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 10
                  ),
                    labelText: 'Principle',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Enter Principal e.g 12000'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TextFormField(
                controller: rateController,
                keyboardType: TextInputType.number,
                validator: (String value){
                  if(value.isEmpty){
                    return 'Please enter the Interest';
                  }
                },
                style: TextStyle(
                    fontSize: 13,
                    color: Theme.of(context).textTheme.title.color),
                decoration: InputDecoration(
                    labelText: 'Rate of Interest',
                    errorStyle: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 15
                    ),
                    labelStyle: textStyle,
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
                    child: TextFormField(
                      controller: termController,
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      // ignore: missing_return
                      validator: (String value){
                        if(value.isEmpty){
                          return 'Please insert term';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Term',
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 14
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Time in Years'),
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
                      color: Theme.of(context).accentColor,
                      textColor: Theme.of(context).primaryColorDark,
                      child: Text('Calculate'),
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState.validate()) {
                            this.displayResult = _calculateTotalReturns();
                          }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text('Reset'),
                      onPressed: () {
                        setState(() {
                          _resetFunction();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(this.displayResult),
            )
          ],
        ),
      ),
    );
    return myContainer;
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/image_2.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      margin: EdgeInsets.all(10),
    );
  }

  String _calculateTotalReturns() {
    var principle = double.parse(principleController.text);
    var rate = double.parse(rateController.text);
    var term = double.parse(termController.text);

    var totalAmount = principle + (principle * rate * term) / 100;

    var result =
        'After $term years , your investment will be worth $totalAmount $dropDownInitialValue';
    return result;
  }

  void _resetFunction() {
    principleController.text = '';
    rateController.text = '';
    termController.text = '';
    displayResult = '';
    dropDownInitialValue = _currencies[0];
  }
}

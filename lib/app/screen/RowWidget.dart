import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var item = Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  'Spice jet',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
                Expanded(
                    child: Text('Spice sadasjkld alskdj laksjdl asjdlakjsd',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white)))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  'Spice jet',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
                Expanded(
                    child: Text('Spice sadasjkld alskdj laksjdl asjdlakjsd',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white)))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  'Spice jet',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
                Expanded(
                    child: Text('Spice sadasjkld alskdj laksjdl asjdlakjsd',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white)))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  'Spice jet',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
                Expanded(
                    child: Text('Spice sadasjkld alskdj laksjdl asjdlakjsd',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white)))
              ],
            ),
            ImageShow(),
            MyButton()
          ],
        ),
      ),
    );

    return item;
  }
}

class ImageShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageAsset = AssetImage('images/image_2.png');
    var image = Image(image: imageAsset, width: 200, height: 300);
    return Container(child: image);
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var flatBookButton = Container(
      margin: EdgeInsets.only(top: 30),
      height: 50,
      width: 200,
      child: RaisedButton(
        color: Colors.deepOrange,
        elevation: 6,
        onPressed: () {
          bookShowDialog(context);
        },
        child: Text(
          'Book Your Flight',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );

    return flatBookButton;
  }


  void bookFlight(BuildContext context) {
    var alertDialgo = AlertDialog(
      title: Text(
        'Flight Book Successfully', textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.black,
            fontSize: 15
        ),
      ),
      content: Text(
        'Have a pleasant flight',
        style: TextStyle(
            color: Colors.black,
            fontSize: 15
        ),
      ),
    );

    showDialog(context: context,
        builder: (BuildContext context) {
          return alertDialgo;
        }
    );
  }

  void bookShowDialog(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text('Flight Booked Successfully '),
      content: Text('have a nice hourney'),
    );

    showDialog(context: context,
    builder: (BuildContext context){
      return alertDialog;
    });
  }
}

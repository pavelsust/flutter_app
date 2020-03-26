import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var item = Center(
//      child: Container(
//        alignment: Alignment.center,
//        color: Colors.deepPurple,
//        child: Row(
//          children: <Widget>[
//            Expanded(
//                child: Text(
//              'Spice jet',
//              textDirection: TextDirection.ltr,
//              style: TextStyle(
//                  decoration: TextDecoration.none,
//                  fontSize: 20,
//                  fontFamily: 'Roboto',
//                  fontWeight: FontWeight.w700,
//                  color: Colors.white),
//            )),
//            Expanded(
//                child: Text('Spice sadasjkld alskdj laksjdl asjdlakjsd',
//                    textDirection: TextDirection.ltr,
//                    style: TextStyle(
//                        decoration: TextDecoration.none,
//                        fontSize: 20,
//                        fontFamily: 'Roboto',
//                        fontWeight: FontWeight.w700,
//                        color: Colors.white)))
//          ],
//        ),
//      ),
//    );
//
//    return item;
//  }
//
//


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
            ImageShow()
          ],
        ),
      ),
    );

    return item;
  }
}

class ImageShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var imageAsset = AssetImage('images/image_2.png');
    var image = Image(image: imageAsset , width: 200, height: 300);
    return Container(child: image);
  }

}
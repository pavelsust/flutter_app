import 'package:flutter/material.dart';
import 'package:flutterapp/testapp/Dashboard.dart';
import 'package:flutterapp/testapp/Login.dart';
import 'package:flutterapp/testapp/stacked_icon.dart';

void main() => runApp(QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Bee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Dashboard()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StackedIcon(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 80),
                child: Text(
                  'Quick Bee',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Sign in With Email',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 5),
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color(0xFF4364A1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Facebook',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color(0xFFDF513B),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Google',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

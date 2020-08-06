import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dashboard();
  }
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Explore',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFFD7384)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.drive_eta, color: Colors.white),
                            Text(
                              'Motor',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.purpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.purpleAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

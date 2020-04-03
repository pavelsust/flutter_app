
import 'package:flutter/material.dart';
import 'package:flutterapp/app/screen/ContainerWidget.dart';
import 'package:flutterapp/app/screen/FirstScreen.dart';
import 'package:flutterapp/app/screen/RowWidget.dart';
import 'package:flutterapp/app/screen/ShowListView.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar:AppBar (
          title: Text('My Toolbar'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ShowListView(),
      ),
    );
    return materialApp;
  }


  Widget getListView(){
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Title'),
          subtitle: Text('Sub Title'),
          trailing: Icon(Icons.wb_sunny),
        )
      ],
    );
    return listView;
  }

}
import 'package:flutter/material.dart';
import 'package:flutterapp/app/calculator/MyCalculator.dart';
import 'package:flutterapp/app/screen/ShowListView.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigo
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Toolbar'),
        ),
        //body: ShowListView(),
        //body: FavouriteCity(),
        body: MyCalculator(),
        //body: MyTest(),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          tooltip: 'Add One More Item',
        ),
      ),
    );
    return materialApp;
  }

  Widget getListView() {
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

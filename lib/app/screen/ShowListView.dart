import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myItems = makeList();
    var listContainer = Container(
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.landscape),
          title: Text(myItems[index]),
          onTap: () {
            debugPrint('click position $index and item is ${myItems[index]}');
            showSnakebar(context, index);
          },
        );
      }),
    );
    return listContainer;
  }

  void showSnakebar(BuildContext context, var item) {
    var snackBar = SnackBar(
      content: Text('item number ${item}'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          debugPrint('Performing dummy Undo operation');
          showUndoSnackBar(context, item);
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void showUndoSnackBar(BuildContext context, var item) {
    var snackBar = SnackBar(
      content: Text(
        '$item undo done',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 10,
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }
}

List<String> makeList() {
  var myItems = new List<String>();
  for (var i = 0; i < 100; i++) {
    myItems.add('items $i');
  }
  return myItems;
}

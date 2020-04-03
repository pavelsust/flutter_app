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
          onTap: (){
            debugPrint('click position ${index} and item is ${myItems[index]}');
          },
        );
      }),
    );

    return listContainer;
  }
}

List<String> makeList() {
  var myItems = new List<String>();

  for (var i = 0; i < 100; i++) {
    myItems.add('items $i');
  }
  return myItems;
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'List Show',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('List'),
          ),
          body: MyList(),
        ));
  }
}

class MyList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyList();
  }
}

class _MyList extends State<MyList> {
  var newsList;
  var count;

  @override
  Widget build(BuildContext context) {
    newsList = List<News>();
    newsList = getNewsList();

    return ListView.builder(
      itemCount: count,
      itemBuilder: (context , position){
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  this.newsList[position].imageLink))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        child: Text(
                          '${this.newsList[position].title}',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  List<News> getNewsList() {
    var newsList = List<News>();
    newsList.add(News('Title 1 ',
        'https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png'));
    newsList.add(News('Title 2 ',
        'https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png'));
    newsList.add(News('Title 3 ',
        'https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png'));
    newsList.add(News('Title 4 ',
        'https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png'));
    newsList.add(News('Title 5 ',
        'https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png'));
    newsList.add(News('Title 6 ',
        'https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png'));
    newsList.add(News('Title 7 ',
        'https://www.publicdomainpictures.net/pictures/320000/velka/background-image.png'));
    count = newsList.length;
    return newsList;
  }
}

class News {
  var _title;

  get title => _title;
  var _imageLink;

  set title(value) {
    _title = value;
  }

  News(this._title, this._imageLink);


  News.empty();

  get imageLink => _imageLink;

  set imageLink(value) {
    _imageLink = value;
  }
}

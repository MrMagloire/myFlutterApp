import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'myApp',
      color: Colors.grey,
      home: new TestAppHomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    );
  }
}

class TestAppHomePage extends StatefulWidget {
  const TestAppHomePage({this.comicCharacter});
  final SuperHeros comicCharacter;
  @override
  TestAppHomePageState createState() => new TestAppHomePageState();
}

class TestAppHomePageState extends State<TestAppHomePage>
    with TickerProviderStateMixin {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Padding(padding: new EdgeInsets.only(top: 20.0),child: new MyTimeLine(),),
          new MyTimeLine(),
          new MyTimeLine(),
          new MyTimeLine(),
          new MyTimeLine(),
          new MyTimeLine(),
          new MyTimeLine(),
        ],
      ),
    );
  }
}

class MyTimeLine extends StatefulWidget{
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<MyTimeLine>{

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.symmetric(horizontal: 10.0),
      child: new Column(
        children: <Widget>[
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                width: 30.0,
                child: new Center(
                  child: new Stack(
                    children: <Widget>[
                      new Padding(padding: new EdgeInsets.only(left: 12.0), child: new VerticalSeparator(),),
                      new Container(padding: new EdgeInsets.only(), child: new Icon(Icons.movie,color: Colors.white), decoration: new BoxDecoration( color: new Color(0xff00c6ff),shape: BoxShape.circle),)
                    ],
                  ),
                ),
              ),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(left: 20.0, top: 5.0),
                      child: new Text(
                        'Header Text',
                        style: new TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.deepOrange,
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 20.0, top: 5.0),
                      child: new Text(
                        'Lorem ipsum description here description here Lorem ipsum description here description here Lorem ipsum description here '
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

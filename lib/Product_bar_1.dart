import 'package:flutter/material.dart';

class MyHorizontalList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHorizontalListState();
  }
}

class MyHorizontalListState extends State<MyHorizontalList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        height: 100.0,
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return _buildItems(index);
            }),
      ),
    );
  }
}


Widget _buildItems(int index) {
  return Container(
    color: Colors.amber,
    padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5.0),
    child: new Row(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Image.asset("assets/Burger.jpg",),
            new Image.asset("assets/Pizza.jpg"),
          ],
        )
      ],
    ),
  );
}
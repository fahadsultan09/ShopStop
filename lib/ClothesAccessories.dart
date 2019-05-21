
import 'package:flutter/material.dart';

class NewPage1 extends StatelessWidget {
  String title;

  NewPage1(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // 1
      appBar: new AppBar(
        //2
        title: new Text(this.title),
      ),
      body: new Center(
        // 3
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[new Text("PAGE 1")],
        ),
      ),
    );
  }
}

void button1(BuildContext context) {
  print("Button 1"); //1
  Navigator.of(context).pushNamed('/screen1'); //2
}

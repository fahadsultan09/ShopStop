

import 'package:flutter/material.dart';

class NewPage2 extends StatelessWidget {
  String title;

  NewPage2(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[new Text("PAGE 2")],
          ),
        ),
      ),
    );
  }
}

void button2(BuildContext context) {
  print("Button 2"); //1
  Navigator.of(context).pushNamed('/screen2'); //2
}

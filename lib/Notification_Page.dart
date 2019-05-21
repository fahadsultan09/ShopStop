import 'package:flutter/material.dart';


class NotificationPage extends StatelessWidget {
  String title;

  NotificationPage(this.title);

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
          children: <Widget>[new Text("Notication")],
        ),
      ),
    );
  }
}

void button4(BuildContext context) {
  print("Button 4"); //1
  Navigator.of(context).pushNamed('/screen4'); //2
}

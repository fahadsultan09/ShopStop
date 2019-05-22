import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drawer/rootpage.dart';
import 'ClothesAccessories.dart';
import 'ElectronicAccessories.dart';
import 'Orders.dart';
import 'Notification_Page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.brown,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      home: new RootPage(),
      routes: <String, WidgetBuilder>{
        '/screen1': (BuildContext context) =>
            new NewPage1("Clothes & Accessories"),
        '/screen2': (BuildContext context) =>
            new NewPage2("Electronic Accessories"),
        '/screen3': (BuildContext context) =>
        new Order(),
        // ignore: strong_mode_invalid_cast_new_expr
        '/screen4': (BuildContext context) => new NotificationPage("Notification"),
      },


    );
  }
}

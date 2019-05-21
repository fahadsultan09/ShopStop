import 'package:flutter/material.dart';
import 'Shops.dart';
import 'Trending.dart';
import 'package:flutter_drawer/Product_bar_1.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  final _pageOption = [HomePage(), ShopsPage(), TrendingPage()];
  int walletAmount;

  _HomePageState() {
    walletAmount = 5000;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          child: new Center(
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new MyHorizontalList(),
            )
          ],
        ),
      )),
    );
  }
}




import 'package:flutter/material.dart';
import 'OrderScheduled.dart' as Schedule;
import 'OrderHistory.dart' as History;
class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Orders"),
        bottom: new TabBar(
            controller: this.controller,
            tabs: [
              new Tab(text: "Schedule"),
              new Tab(text: "History"),
            ]),
      ),
      body: new TabBarView(
            controller: controller,
          children: [
            new Schedule.OrderScheduled(),
            new History.OrderHistory(),
          ]),
    );
  }
}



void button3(BuildContext context) {
  print("Button 3"); //1
  Navigator.of(context).pushNamed('/screen3'); //2
}


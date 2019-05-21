import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Shops.dart';
import 'Trending.dart';
import 'ClothesAccessories.dart';
import 'ElectronicAccessories.dart';
import 'HomePage.dart';
import 'Orders.dart';
import 'Notification_Page.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  int _selectedPage = 0;
  final _pageOption = [
    HomePage(), ShopsPage(), TrendingPage()
  ];


  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  new AppBar(
        title: new Text("Shop Stop"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: MainDrawer(),
      body: _pageOption[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index){

            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: new Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.shop_two),title: new Text("Shops")),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot),title: new Text("Trending")),
          ]

      ),
      
    );
  }
}


class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {

  int walletAmount;
  String _name;
  String _email;
  _MainDrawerState(){
    _name = "Fahad Sultan";
    _email = "K163908@nu.edu.pk";
    walletAmount = 5230;
  }
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(_name),
            accountEmail: new Text(_email),
            currentAccountPicture: new CircleAvatar(
              backgroundColor:
              Theme.of(context).platform == TargetPlatform.android
                  ? Colors.brown.shade800
                  : Colors.white,
              child: Text('F'),
            ),
            otherAccountsPictures: <Widget>[
              new CircleAvatar(
                backgroundColor:
                Theme.of(context).platform == TargetPlatform.android
                    ? Colors.brown.shade800
                    : Colors.grey,
                child: Text('K'),
              )
            ],
          ),
          new ListTile(
            title: new Text("Clothes & Accessories"),
            trailing: new Icon(Icons.people),
            onTap: () {
              Navigator.of(context).pop();
              button1(context);
            },
          ),
          new ListTile(
            title: new Text("Electronic Accessories"),
            trailing: new Icon(Icons.computer),
            onTap: () {
              Navigator.of(context).pop();
              button2(context);
            },
          ),
          new ListTile(
            title: new Text("Orders"),
            trailing: new Icon(Icons.shopping_basket),
            onTap: (){
              Navigator.of(context).pop();
              button3(context);
            },
          ),
          new ListTile(
            title: new Text("Shopping Cart"),
            trailing: new Icon(Icons.shopping_cart),
          ),
          new ListTile(
            title: new Text("Notifications"),
            trailing: new Icon(Icons.notifications_active),
            onTap: () {
              Navigator.of(context).pop();
              button4(context);
            },
          ),
          new ListTile(
            title:
            new Text("Wallet" + this.walletAmount.toString().padLeft(60),style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          new Divider(),
          new ListTile(
            title: new Text("Logout"),
            trailing: new Icon(Icons.exit_to_app),
          ),
          new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}

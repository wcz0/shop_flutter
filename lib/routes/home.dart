import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_generator/generate_localized.dart';
import 'package:shop_flutter/model/profile.dart';

class HomeRoute extends StatefulWidget {
  int _selectdIndex = 0;

  final List<Widget> _pages = <Widget>[
    HomeRoute(),
    Category(),
    Message(),
    CartRoute(),
    ProfileRoute(),
  ];

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shop'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey[900],
          selectedItemColor: Colors.blue,
          unselectedFontSize: 11,
          selectedFontSize: 11,
          currentIndex: _selectdIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页',
              key: Key('home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: '分类',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: '消息',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopify_sharp),
              label: '购物车',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '我的',
            ),
          ],
        ));
  }
}

void _onItemTapped(int index) {
  setState((){
    _selectdIndex = index;
  })
}

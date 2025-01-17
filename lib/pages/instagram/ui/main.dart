import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/instagram/ui/bottom_nav_bar.dart';
import 'package:flutter_ui/pages/instagram/data/page_list.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InstagramMainPage extends StatefulWidget {
  // Started 23-08-2021 20:00

  @override
  _InstagramMainPageState createState() => _InstagramMainPageState();
}

class _InstagramMainPageState extends State<InstagramMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Instagram",
          style: TextStyle(
              fontFamily: "lobster",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24.0),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                Fluttertoast.showToast(msg: "Direct was clicked");
              }),
        ],
      ),
      body: _getCurrentPage(),
      bottomNavigationBar: _getBottomNavBar(),
    );
  }

  int _currentIndex = 0;

  void _onTapBottomNavItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getCurrentPage() => pageList[_currentIndex];

  _getBottomNavBar() => BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: bottomNavBatItems,
        type: BottomNavigationBarType.fixed,
        onTap: _onTapBottomNavItem,
      );
}

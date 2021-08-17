import 'dart:convert';

import 'package:ambulanceHailerDriver/pages/home/home_page.dart';
import 'package:ambulanceHailerDriver/user/profile.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();

  }
  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).primaryColor,
      body: Scaffold(
        body: Stack(
          children: <Widget>[
            Align(child: _buildBottomBar(),
              alignment: Alignment.bottomCenter,
            ),
          ],

        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return
      Scaffold(
        backgroundColor: Colors.grey[100],
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(Icons.power_settings_new),
          backgroundColor: Colors.red,
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BubbleBottomBar(
          opacity: 0.2,
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.0),
          ),
          currentIndex: currentIndex,
          hasInk: true,
          inkColor: Colors.black12,
          hasNotch: true,
          fabLocation: BubbleBottomBarFabLocation.end,
          onTap: changePage,
          items: [
            BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text('Accueil'),
            ),
            BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.credit_card,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.credit_card,
                color: Colors.indigo,
              ),
              title: Text('Transaction'),
            ),
            BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.contact_mail,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.contact_mail,
                color: Colors.deepPurple,
              ),
              title: Text('Profil'),
            ),
          ],
        ),
        body: (currentIndex == 0)
            ?  Center(
          child: Container(
            child: HomePage(),
          ),
        )
            : (currentIndex == 1)
            ? Center(
          child: Container(
            child: ProfilePage(),
          ),
        )
            : Center(
          child: Container(
            child: ProfilePage(),
          ),
        ),
      );
  }

}

